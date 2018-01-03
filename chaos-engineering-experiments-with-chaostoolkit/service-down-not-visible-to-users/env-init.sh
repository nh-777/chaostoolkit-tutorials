#!/bin/bash
set -eo pipefail

function main () {
    echo "Updating package database"
    apt-get update

    echo "Installing system-wide Python dependencies"
    apt-get install -y -q python3-dev python3-venv

    echo "Preparing Python environment"
    mkdir ~/.venvs
    python3 -m venv ~/.venvs/chaostk
    source ~/.venvs/chaostk/bin/activate

    echo "Install the chaostoolkit command"
    pip install -q -U chaostoolkit

    echo "Install the chaostoolkit dependencies"
    pip install -q -U chaostoolkit-kubernetes

    echo "Downloading sample files"
    git clone https://github.com/chaostoolkit/chaostoolkit-samples.git

    cd chaostoolkit-samples/service-down-not-visible-to-users
}

main "$@" || exit 1
exit 0