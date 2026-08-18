#!/usr/bin/env bash
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"

docker compose \
  -f "$ROOT_DIR/docker/docker-compose.prod.yml" \
  --env-file "$ROOT_DIR/docker/.env.prod" \
  --env-file "$ROOT_DIR/.env.prod" \
  build --no-cache

docker compose \
  -f "$ROOT_DIR/docker/docker-compose.prod.yml" \
  --env-file "$ROOT_DIR/docker/.env.prod" \
  --env-file "$ROOT_DIR/.env.prod" \
  up -d
