#!/usr/bin/env python3
import os
import sys
import xml.etree.ElementTree as ET
import subprocess
import argparse
import ast
import yaml
import json


def is_included(path: str):
    includes = ["frameworks", "kdesupport/plasma-wayland-protocols", "kde/workspace"]

    for i in includes:
        if path.startswith(i):
            return True

    return False


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


def gen_repo():
    root = ET.Element("manifest")
    tree = ET.ElementTree(root)
    ET.SubElement(
        root, "remote", {"name": "kitware", "fetch": "ssh://git@gitlab.kitware.com"}
    )
    ET.SubElement(root, "remote", {"name": "kde", "fetch": "ssh://git@invent.kde.org"})
    ET.SubElement(root, "default", {"revision": "refs/heads/master", "remote": "kde"})
    ET.SubElement(
        root,
        "project",
        {"name": "sysadmin/repo-metadata", "path": "src/sysadmin/repo-metadata"},
    )

    for project in gen_yaml():
        name = project["repopath"]
        path = os.path.join("src", project["projectpath"])
        ET.SubElement(root, "project", {"name": name, "path": path})

    tree.write("default.xml", encoding="utf-8")

    subprocess.run(
        ["xmllint", "--format", "default.xml", "--output", "default.xml"], check=True
    )


def gen_vscode():
    workspace = {"folders": [], "settings": {"git.ignoredRepositories": [".."]}}

    for project in gen_yaml():
        workspace["folders"].append(
            {"path": os.path.join("src", project["projectpath"])}
        )

    with open("monokde.code-workspace", "w") as f:
        f.write(json.dumps(workspace, indent=4))


def gen_cmake():
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

    parser.add_argument("--repo", action="store_true")
    parser.add_argument("--vscode", action="store_true")
    parser.add_argument("--cmake", action="store_true")

    args = parser.parse_args(sys.argv[1:])

    if args.repo:
        gen_repo()

    if args.vscode:
        gen_vscode()

    if args.cmake:
        gen_cmake()


if __name__ == "__main__":
    main()
