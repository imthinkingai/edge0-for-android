"""Rebuild with a compatible engine from a locally supplied APK."""
import argparse
from pathlib import Path
import shutil
import subprocess
import tempfile
import zipfile

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument("--apktool", type=Path, required=True)
parser.add_argument("--engine-apk", type=Path, required=True)
parser.add_argument("--output", type=Path, required=True)
args = parser.parse_args()
output = args.output.resolve()
if output.exists():
    parser.error("--output already exists")
entry = Path("lib/arm64-v8a/libedge0engine.so")
project = Path(__file__).resolve().parents[1] / "apktool-project"
with tempfile.TemporaryDirectory(prefix="edge0-build-") as tmp:
    stage = Path(tmp) / "app"
    shutil.copytree(project, stage, ignore=shutil.ignore_patterns("build", "dist"))
    with zipfile.ZipFile(args.engine_apk) as apk:
        binary = stage / entry
        binary.parent.mkdir(parents=True, exist_ok=True)
        binary.write_bytes(apk.read(entry.as_posix()))
    subprocess.run(["java", "-jar", str(args.apktool.resolve()), "b",
                    str(stage), "-o", str(output)], check=True)
