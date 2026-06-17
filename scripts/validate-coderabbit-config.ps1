param(
    [string]$SchemaPath = "work/coderabbit-schema.json"
)

$ErrorActionPreference = "Stop"

if (-not (Test-Path $SchemaPath)) {
    New-Item -ItemType Directory -Force -Path (Split-Path $SchemaPath) | Out-Null
    Invoke-WebRequest -Uri "https://coderabbit.ai/integrations/schema.v2.json" -OutFile $SchemaPath
}

@'
import json
import sys
from pathlib import Path

import yaml
from jsonschema import Draft7Validator

root = Path.cwd()
schema = json.loads(Path(sys.argv[1]).read_text(encoding="utf-8"))
targets = [".coderabbit.yaml", "templates/repository/.coderabbit.yaml"]
failed = False

for rel in targets:
    data = yaml.safe_load((root / rel).read_text(encoding="utf-8"))
    errors = sorted(Draft7Validator(schema).iter_errors(data), key=lambda e: list(e.path))
    if errors:
        failed = True
        print(f"{rel}: INVALID")
        for err in errors:
            path = ".".join(str(p) for p in err.path) or "<root>"
            print(f"  {path}: {err.message}")
    else:
        print(f"{rel}: valid")

sys.exit(1 if failed else 0)
'@ | python - $SchemaPath
