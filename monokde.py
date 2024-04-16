#!/usr/bin/env python3
import os
import sys
import asyncio
import subprocess
import argparse
import ast
import yaml
import json

def run(args) -> subprocess.CompletedProcess:
    return subprocess.run(args, check=True)

def is_included(path: str):
    includes = ["frameworks", "kdesupport/plasma-wayland-protocols", "kde/workspace"]

    for i in includes:
        if path.startswith(i):
            return True

    return False

async def gather_with_concurrency(n, *tasks):
    semaphore = asyncio.Semaphore(n)

    async def sem_task(task):
        async with semaphore:
            return await task
    return await asyncio.gather(*(sem_task(task) for task in tasks))

async def clone_project(repopath, projectpath) -> int:
    os.makedirs(projectpath, exist_ok=True)
    if os.path.exists(f"{projectpath}/.git"):
        return 0

    git = await asyncio.create_subprocess_exec("git", "clone", repopath, projectpath)
    return await git.wait()

async def update_project(projectpath) -> int:
    git = await asyncio.create_subprocess_shell("git pull origin master:master | grep -v \"Already up to date.\"", cwd=projectpath)
    return await git.wait()


def gen_yaml(path: str = "src/sysadmin/repo-metadata/projects-invent"):
    with os.scandir(path) as it:
        for entry in it:
            if entry.is_file() and entry.name.endswith(".yaml"):
                with open(entry.path) as f:
                    y = yaml.safe_load(f)
                    if is_included(y["projectpath"]):
                        yield y
            elif entry.is_dir():
                yield from gen_yaml(entry.path)
            else:
                pass

def clone(args):
    os.makedirs("src/sysadmin/repo-metadata", exist_ok=True)

    if not os.path.exists("src/sysadmin/repo-metadata/.git"):
        run(["git", "clone", "git@invent.kde.org:sysadmin/repo-metadata.git", "src/sysadmin/repo-metadata"])

    tasks = []

    for project in gen_yaml():
        repopath = f"git@invent.kde.org:{project['repopath']}"
        projectpath = os.path.join("src", project["projectpath"])
        tasks.append(clone_project(repopath, projectpath))

    asyncio.run(gather_with_concurrency(args.concurrency, *tasks))

def update(args):
    if not os.path.exists("src/sysadmin/repo-metadata/.git"):
        print("Run clone first")
        return

    tasks = []

    for project in gen_yaml():
        projectpath = os.path.join("src", project["projectpath"])
        tasks.append(update_project(projectpath))

    asyncio.run(gather_with_concurrency(args.concurrency, *tasks))


def gen_vscode(args):
    workspace = {"folders": [], "settings": {"git.ignoredRepositories": [".."]}}

    for project in gen_yaml():
        workspace["folders"].append(
            {"path": os.path.join("src", project["projectpath"])}
        )

    with open("monokde.code-workspace", "w") as f:
        f.write(json.dumps(workspace, indent=4))


def gen_cmake(args):
    deps_path = "src/sysadmin/repo-metadata/dependencies"
    build_order_tool = f"{deps_path}/tools/build_order"
    list_deps_tool = f"{deps_path}/tools/list_dependencies"

    order = subprocess.run(
        [build_order_tool, f"{deps_path}/dependency-data-kf5-qt5"],
        check=True,
        capture_output=True,
        text=True,
    )
    order = ast.literal_eval(order.stdout.strip())
    order = [o for o in order if is_included(o)]

    with open("projects.cmake", "w") as f:
        f.write("# GENERATED CODE! Run tools/gen.py --cmake to regenerate.\n\n")

        for project in order:
            deps = subprocess.run(
                [
                    list_deps_tool,
                    "-d",
                    "-m",
                    deps_path,
                    "-f",
                    f"{project}",
                ],
                capture_output=True,
                check=True,
                text=True,
            ).stdout

            deps = deps.splitlines()
            deps = [d.strip() for d in deps]
            deps = deps[1:]
            deps = [d for d in deps if is_included(d)]
            deps = [os.path.basename(d) for d in deps]
            deps = [d.replace("kf5umbrella", "${KF5UMBRELLA_DEPS}") for d in deps]

            if project == "frameworks/kf5umbrella":
                deps = "\n  ".join(deps)
                f.write(
                    f"""\
set(KF5UMBRELLA_DEPS
  {deps}
)
"""
                )
                continue

            if len(deps) == 0:
                f.write(f"kde_project({project})\n")
            else:
                deps = "\n    ".join(deps)
                f.write(
                    f"""\
kde_project(
  {project}
  DEPENDS
    {deps}
)
"""
                )


def main():
    parser = argparse.ArgumentParser()

    subparsers = parser.add_subparsers(dest="command", required=True)

    c = subparsers.add_parser("clone")
    c.add_argument("-j", dest="concurrency", type=int, default=1)
    u = subparsers.add_parser("update")
    u.add_argument("-j", dest="concurrency", type=int, default=1)
    subparsers.add_parser("vscode")
    subparsers.add_parser("cmake")

    args = parser.parse_args(sys.argv[1:])

    {
        "clone": clone,
        "update": update,
        "vscode": gen_vscode,
        "cmake": gen_cmake,
    }[args.command](args)


if __name__ == "__main__":
    main()
