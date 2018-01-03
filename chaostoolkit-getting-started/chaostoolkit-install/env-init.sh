#!/bin/bash
set -eo pipefail

function main () {
    echo "Updating package database"
    apt-get update

    echo "Installing system-wide Python dependencies"
    apt-get install -y -q python3-dev python3-venv
}

main "$@" || exit 1
exit 0