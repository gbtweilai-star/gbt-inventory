#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_inventory info
PYTHONPATH=src python -m gbt_inventory check --payload '{}'
PYTHONPATH=src python -m gbt_inventory run   --payload '{}'
