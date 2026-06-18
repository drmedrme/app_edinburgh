#!/usr/bin/env bash
set -euo pipefail

APP_NAME="edinburgh"
APP_HUB_ROOT="${APP_HUB_ROOT:-/home/gh/app_hub}"
HOST="${HOST:-0.0.0.0}"
PORT="${PORT:-}"

if [ -z "$PORT" ]; then
  PORT="$(python3 - <<'PY'
import json
import os
import subprocess
from pathlib import Path

app_name = "edinburgh"
start = 3100
end = 9999
used: set[int] = set()
registry = Path(os.environ.get("APP_HUB_ROOT", "/home/gh/app_hub")) / "apps.json"

if registry.exists():
    try:
        data = json.loads(registry.read_text())
        app = data.get("apps", {}).get(app_name)
        port = app.get("frontend_port") if app else None
        if port:
            print(port)
            raise SystemExit
    except SystemExit:
        raise
    except Exception:
        pass

try:
    result = subprocess.run(["ss", "-tlnp"], capture_output=True, text=True, check=False)
    for line in result.stdout.splitlines():
        if "LISTEN" not in line:
            continue
        for part in line.split():
            if ":" not in part:
                continue
            try:
                used.add(int(part.rsplit(":", 1)[1]))
            except (ValueError, IndexError):
                pass
except Exception:
    pass

if registry.exists():
    try:
        data = json.loads(registry.read_text())
        for app in data.get("apps", {}).values():
            for key in ("backend_port", "frontend_port"):
                port = app.get(key)
                if port:
                    used.add(int(port))
    except Exception:
        pass

for port in range(start, end, 2):
    if port not in used and port + 1 not in used:
        print(port + 1)
        raise SystemExit

raise SystemExit("No available App Hub-style frontend port")
PY
)"
fi

echo "Serving Edinburgh Festival planner at http://0.0.0.0:${PORT}"
python3 -m http.server "$PORT" --bind "$HOST"
