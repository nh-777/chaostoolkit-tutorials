The `chaos reporting` command is an extension to the [Chaos Toolkit](http://chaostoolkit.org/) CLI. First you can turn on the virtual environment that has the `chaos` command installed by executing:

`source ~/.venvs/chaostk/bin/activate`{{execute}}

Now you can install the `chaos report` command by executing:

`pip install -U chaostoolkit-reporting`{{execute}}

Finally you need to install the various dependencies for the formats of report you want to generate. To do that, you first make sure your `apt-get` index is up to date by executing:

`apt-get update`{{execute}}

Now you can install the dependencies you will need for your own reports:

`apt-get install texlive-latex-base texlive-fonts-recommended     texlive-fonts-extra texlive-latex-extra pdflatex`{{execute}}

Now you're ready to run a chaos experiment and produce your report...

