echo 'export PS1="\[\033[38;5;226m\]\t\[\] \[\033[01;34m\]\w\[\033[00m\]\$ "' >> $HOME/.bashrc
echo "export LC_ALL=C.UTF-8" >> $HOME/.bashrc
echo "export LANG=C.UTF-8" >> $HOME/.bashrc
mkdir ~/.venvs && python3 -m venv ~/.venvs/chaostk && source ~/.venvs/chaostk/bin/activate && pip install -q -U setuptools pip chaostoolkit
