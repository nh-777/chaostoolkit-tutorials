#!/bin/bash
set -eo pipefail

function main () {
    echo "Cloning the application and experiment assets"
    git clone --depth 1 https://github.com/chaostoolkit/chaostoolkit-samples.git
    cd chaostoolkit-samples/service-down-not-visible-to-users

    echo "Starting Kubernetes cluster"
    launch.sh

    echo "Preparing the Python environment"
    mkdir ~/.venvs && python3 -m venv ~/.venvs/chaostk
    source ~/.venvs/chaostk/bin/activate

    echo "Installing chaostoolkit"
    pip install -q -U chaostoolkit

    echo "Installing the chaostoolkit dependencies"
    pip install -q -U chaostoolkit-kubernetes

    clear
}

main "$@" || exit 1
exit 0