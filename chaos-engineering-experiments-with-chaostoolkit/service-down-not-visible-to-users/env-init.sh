ssh root@host01 <<EOF
export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install -y -q python3-dev python3-venv
mkdir ~/.venvs
python3 -m venv ~/.venvs/chaostk
source ~/.venvs/chaostk/bin/activate
pip install -q -U chaostoolkit
pip install -q -U chaostoolkit-kubernetes
git clone https://github.com/chaostoolkit/chaostoolkit-samples.git
cd chaostoolkit-samples/service-down-not-visible-to-users
EOF
