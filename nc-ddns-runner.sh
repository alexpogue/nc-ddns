#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

main() {
  scriptOutput="$(${SCRIPT_DIR}/nc-ddns.sh -c ${SCRIPT_DIR}/config.sh -d)"
  if grep "ERR\|WARN" <<< "$scriptOutput"; then
    echo "ERR or WARN"
  else
    echo "all good"
  fi
}

main $@
