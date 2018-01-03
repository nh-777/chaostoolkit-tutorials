#!/bin/bash
set -eo pipefail

function main () {
    echo "Updating package database"
    apt-get -qq -o=Dpkg::Use-Pty=0 update

    echo "Installing system-wide required packages"
    apt-get -qq -o=Dpkg::Use-Pty=0 install -y python3-dev python3-venv

    echo "Preparing the Python environment"
    mkdir ~/.venvs && python3 -m venv ~/.venvs/chaostk
    source ~/.venvs/chaostk/bin/activate

    echo "Installing chaostoolkit"
    pip install -q -U chaostoolkit

    echo "Installing the chaostoolkit dependencies"
    pip install -q -U chaostoolkit-kubernetes

    echo "Cloning the application and experiment assets"
    git clone --depth 1 https://github.com/chaostoolkit/chaostoolkit-samples.git
    cd chaostoolkit-samples/service-down-not-visible-to-users

    echo "Starting Kubernetes cluster"
    launch.sh

    clear
}

main "$@" || exit 1
exit 0