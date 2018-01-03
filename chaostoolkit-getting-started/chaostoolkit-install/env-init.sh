#!/bin/bash
set -eo pipefail

function main () {
    apt-get update
    apt-get install -y python3-dev python3-venv
}

main "$@" || exit 1
exit 0