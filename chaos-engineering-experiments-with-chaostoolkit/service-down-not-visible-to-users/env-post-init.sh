#!/bin/bash
set -eo pipefail

function main () {
    curl -O https://pypi.python.org/packages/d4/0c/9840c08189e030873387a73b90ada981885010dd9aea134d6de30cd24cb8/virtualenv-15.1.0.tar.gz && tar zxvf virtualenv-15.1.0.tar.gz && cd virtualenv-15.1.0 && mkdir ~/.venvs && python3 virtualenv.py ~/.venvs/chaostk
    
    echo "Cloning the application and experiment assets"
    git clone --depth 1 https://github.com/chaostoolkit/chaostoolkit-samples.git
    cd chaostoolkit-samples/service-down-not-visible-to-users

    echo "Starting Kubernetes cluster"
    launch.sh

    echo "Preparing the Python environment"
    #mkdir ~/.venvs && python3 -m venv ~/.venvs/chaostk
    source ~/.venvs/chaostk/bin/activate

    echo "Installing chaostoolkit"
    pip install -q -U chaostoolkit

    echo "Installing the chaostoolkit dependencies"
    pip install -q -U chaostoolkit-kubernetes

    clear
}

main "$@" || exit 1
exit 0