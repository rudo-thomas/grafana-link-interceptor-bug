#!/bin/bash
set -euo pipefail
SCRIPT_DIR=$(dirname -- "$0")
cd "$SCRIPT_DIR"
[[ -e compose.yaml ]] || { echo >&2 "compose.yaml not found in $PWD"; exit 2; }
set -x
jsonnet -S -e 'std.manifestIni(import "cfg.jsonnet")' >grafana.ini
jsonnet home_dashboard.jsonnet >home.json
trap 'docker compose down' EXIT
docker compose up
