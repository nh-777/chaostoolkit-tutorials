#!/bin/bash
set -eo pipefail

function main () {
    
    echo "Starting Kubernetes cluster"
    launch.sh

    clear
}

main "$@" || exit 1
exit 0