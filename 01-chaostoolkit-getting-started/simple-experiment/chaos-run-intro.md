The Chaos Toolkit CLI, called `chaos`, comes with the `run` command that can 
be used to execute a chaos experiment that has been defined in 
[JSON](https://www.json.org/) using the 
[Chaos Toolkit's](http://chaostoolkit.org/) 
[open format](http://chaostoolkit.org/overview/concepts/).

To use the `chaos` 
command you need to turn on the Python virtual environment that the command 
is installed into:

`source ~/.venvs/chaostk/bin/activate`{{execute}}

With the `chaostk` virtual environment activated, you should now be able to 
execute the `chaos run` command:

`chaos run`{{execute}}

Simply running `chaos run` without any further information will result in you 
being prompted to specify a `path`. This should be a path to a valid 
[Chaos Toolkit](http://chaostoolkit.org/) chaos experiment specification, 
and you don't have one yet...

In the next step of this scenario you'll write your first, very simple chaos 
engineering experiment...


