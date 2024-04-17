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


async def add_submodule(repopath, projectpath) -> int:
    if os.path.exists(f"{projectpath}/.git"):
        return 0

    git = await asyncio.create_subprocess_exec("git", "submodule", "add", "--branch", "master", repopath, projectpath)
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
    if not os.path.exists("src/sysadmin/repo-metadata/.git"):
        run(["git", "submodule", "add", "--force", "--branch", "master", "https://invent.kde.org/sysadmin/repo-metadata.git", "src/sysadmin/repo-metadata"])

    for project in gen_yaml():
        repopath = f"https://invent.kde.org/{project['repopath']}.git"
        projectpath = os.path.join("src", project["projectpath"])
        run(["git", "submodule", "add", "--force", "--branch", "master", repopath, projectpath])


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
        [build_order_tool, f"{deps_path}/dependency-data-kf6-qt6"],
        check=True,
        stdout=subprocess.PIPE,
        text=True,
    )
    order = ast.literal_eval(order.stdout.strip())
    order = [o for o in order if is_included(o)]

    with open("projects.cmake", "w") as f:
        f.write("# GENERATED CODE! Run monokde.py --cmake to regenerate.\n\n")

        for project in order:
            deps = subprocess.run(
                [
                    list_deps_tool,
                    "-d",
                    "-m",
                    deps_path,
                    "-f",
                    f"{project}",
                    "--branch-group",
                    "kf6-qt6",
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

    subparsers.add_parser("clone")
    subparsers.add_parser("vscode")
    subparsers.add_parser("cmake")

    args = parser.parse_args(sys.argv[1:])

    {
        "clone": clone,
        "vscode": gen_vscode,
        "cmake": gen_cmake,
    }[args.command](args)


if __name__ == "__main__":
    main()
