#!/usr/bin/env python3
"""
Translation of scope-lists/refresh.hs to Python.

Usage:
  refresh.py db <grammar.yml> <out.yml>
  refresh.py md <db.yml> <out.md>
"""

import sys
import os
import yaml


def parse_names(obj):
    names = set()
    if isinstance(obj, dict):
        name = obj.get("name")
        if isinstance(name, str):
            names.add(name)
        for v in obj.values():
            names |= parse_names(v)
    elif isinstance(obj, list):
        for item in obj:
            names |= parse_names(item)
    return names


def normalize_info(info):
    out = {"scope": info.get("scope")}
    if info.get("description") is not None:
        out["description"] = info.get("description")
    if info.get("example") is not None:
        out["example"] = info.get("example")
    if info.get("hide"):
        out["hide"] = True
    return out


def merge_info(ext_list, names_set):
    ext_names = {i.get("scope") for i in ext_list if i.get("scope") is not None}
    missing = sorted(names_set - ext_names)
    return ext_list + [{"scope": n} for n in missing]


def to_markdown(info_list):
    lines = ["| Scope Name | Description | Example |", "|-|-|-|"]
    for info in info_list:
        if info.get("hide"):
            continue
        scope = info.get("scope", "")
        desc = info.get("description") or ""
        ex = info.get("example") or ""
        lines.append(f"| {scope} | {desc} | {ex} |")
    return "\n".join(lines)


def load_yaml(path):
    with open(path, "r", encoding="utf-8") as f:
        return yaml.safe_load(f)


def write_yaml(path, data):
    with open(path, "w", encoding="utf-8") as f:
        yaml.safe_dump(data, f, sort_keys=False, allow_unicode=True)


def refresh_db(syntax, out_file):
    grammar = load_yaml(syntax)
    names = parse_names(grammar)

    if os.path.exists(out_file):
        old = load_yaml(out_file) or []
    else:
        old = None

    ext = old if old is not None else []
    merged = merge_info(ext, names)
    normalized = [normalize_info(i) for i in merged]
    write_yaml(out_file, normalized)


def make_markdown(db, md):
    info = load_yaml(db) or []
    md_text = to_markdown(info)
    with open(md, "w", encoding="utf-8") as f:
        f.write(md_text)


def usage():
    print("Usage:")
    print("  refresh.py db <grammar.yml> <out.yml>")
    print("  refresh.py md <db.yml> <out.md>")


def main(argv):
    if len(argv) == 4 and argv[1] == "db":
        refresh_db(argv[2], argv[3])
    elif len(argv) == 4 and argv[1] == "md":
        make_markdown(argv[2], argv[3])
    else:
        usage()
        sys.exit(2)


if __name__ == "__main__":
    main(sys.argv)
