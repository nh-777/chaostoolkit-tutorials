The Chaos Toolkit CLI, called `chaos`, is a Python program that is executed
in your terminal. It exposes various built-in commands performing different
tasks.

The Chaos Toolkit expects [Python 3][py3k] to run. Let's make sure you run
at least Python 3.5:

`python3 -V`{{execute}}

[py3k]: https://www.python.org/

Usually, the `python` binary refers to Python 2 so make sure you use `python3`
in your commands.

As a Python program, it is best install it in its own virtual environment.
Let's create it as follows:

```mkdir ~/.venvs && python3 -m venv ~/.venvs/chaostk```{{execute}}

Once the virtual environment installed, you need to activate it in your
current terminal session:

`source ~/.venvs/chaostk/bin/activate`{{execute}}

To install it run the following:

`pip install -U chaostoolkit`{{execute}}

Now, the `chaos` comand should be available:

`chaos --help`{{execute}}

Next, you need to learn how to install extensions to provide new probes and
actions to your Chaos Toolkit environment.