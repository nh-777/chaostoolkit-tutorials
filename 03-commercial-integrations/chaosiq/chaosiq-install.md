The Chaos Toolkit CLI, called `chaos`, has already beemn installed and you can make it available using the following command:

`source ~/.venvs/chaostk/bin/activate`{{execute}}

With the `chaostk` virtual environment activated you can now execute `chaos --help` and you should see the following:

```
(chaostk) 15:47:04 ~/tutorial$ chaos --help
Usage: chaos [OPTIONS] COMMAND [ARGS]...

Options:
  --version           Show the version and exit.
  --verbose           Display debug level traces.
  --no-version-check  Do not search for an updated version of the
                      chaostoolkit.
  --change-dir TEXT   Change directory before running experiment.
  --no-log-file       Disable logging to file entirely.
  --log-file TEXT     File path where to write the experiment log.  [default:
                      experiment.log]
  --help              Show this message and exit.

Commands:
  discover  Discover capabilities and experiments.
  init      Initialize a new experiment from discovered...
  run       Run the experiment given at PATH.
  validate  Validate the experiment at PATH.
```

Now you need to install the [ChaosIQ](http://www.chaosiq.io/) extension into the [Chaos Toolkit](http://chaostoolkit.org/) by executing:

`pip install -U chaosiq`{{execute}}

Once the command is executed you should see something like:

```
Installing collected packages: chaosiq
Successfully installed chaosiq-0.2.2
```

With ChaosIQ installed, it's now time to initialise it with a token so you can use it...