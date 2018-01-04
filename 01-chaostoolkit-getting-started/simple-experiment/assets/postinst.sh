#!/bin/bash

function main () {
    local venv_path="$HOME/.venvs/chaostk/bin/chaos"

    echo "Waiting for environment to be fully updated..."
    for i in {1..70}
    do
        if [ -f $venv_path ]; then
            break
        fi
        sleep 1s
    done

    # when we didn't break from the previous loop, it means the package
    # hasn't been installed yet, let's bail.
    if [ ! -f $venv_path ]; then
        echo "Environment took too long to be prepared. "\
            "Sorry, but you will have to refresh this page and try again :/"
        return 1
    fi
    echo "Environment is now ready"

    echo "All set, you can now start your class."
}

main || exit 1
