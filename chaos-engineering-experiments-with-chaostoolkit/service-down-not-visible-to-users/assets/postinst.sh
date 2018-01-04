#!/bin/bash

function main () {
    launch.sh

    echo "Waiting for environment to be fully updated..."
    for i in {1..40}
    do
        if dpkg -l python3-venv > /dev/null 2>&1; then
            break
        fi
        sleep 1s
    done

    # when we didn't break from the previous loop, it means the package
    # hasn't been installed yet, let's bail.
    if ! dpkg -l python3-venv > /dev/null 2>&1; then
        echo "Environment took too long to be prepared. "\
            "Sorry, but you will have to refresh this page and try again :/"
        return 1
    fi

    echo "Environment is now ready"

    source ~/.venvs/chaostk/bin/activate
    git clone --depth 1 https://github.com/chaostoolkit/chaostoolkit-samples.git
    cd chaostoolkit-samples/service-down-not-visible-to-users
    echo "All set, you can now start your class."
    ls
}

main || exit 1
