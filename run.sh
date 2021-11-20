#!/bin/bash
set -euo pipefail

credentials=""
if [[ -n "${USERNAME:-}" ]] && [[ -n "${PASSWORD:-}" ]]; then
  credentials="\&username=$USERNAME\&password=$PASSWORD"
fi

exec snapserver --config /root/snapserver.conf
