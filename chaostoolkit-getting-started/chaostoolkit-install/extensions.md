The Chaos Toolkit draws its features from extensions that are installed in the
same Python environment as the `chaos` command itself.

First, you need to activate your virtual environment:

`source ~/.venvs/chaostk/bin/activate`{{execute}}

All extensions work the same way, so let's install one as an example:

`pip install -U chaostoolkit-kubernetes`{{execute}}

This fetches the
[chaostoolkit-kubernetes](https://github.com/chaostoolkit/chaostoolkit-kubernetes)
and installs all its dependencies before installing the extension itself.
