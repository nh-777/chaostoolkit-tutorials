#ssh root@host01 "export DEBIAN_FRONTEND=noninteractive && apt-get update && apt-get install -y python3-dev python3-venv"

#&& mkdir ~/.venvs && python3 -m venv ~/.venvs/chaostk && source ~/.venvs/chaostk/bin/activate && pip install -q -U chaostoolkit chaostoolkit-kubernetes && git clone --depth 1 https://github.com/chaostoolkit/chaostoolkit-samples.git && cd chaostoolkit-samples/service-down-not-visible-to-users"

ssh root@host01 "curl -O https://pypi.python.org/packages/d4/0c/9840c08189e030873387a73b90ada981885010dd9aea134d6de30cd24cb8/virtualenv-15.1.0.tar.gz && tar zxvf virtualenv-15.1.0.tar.gz && cd virtualenv-15.1.0 && mkdir ~/.venvs && python3 virtualenv.py ~/.venvs/chaostk"