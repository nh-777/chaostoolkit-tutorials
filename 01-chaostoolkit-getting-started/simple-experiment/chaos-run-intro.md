The Chaos Toolkit CLI, called `chaos`, comes with the `run` command that can 
be used to execute a chaos experiment that has been defined in 
[JSON](https://www.json.org/) using the Chaos Toolkit's standard and 
[chaos-tool-independent format](http://chaostoolkit.org/overview/concepts/).

First, let's give the `chaos run` command a spin. To use to the `chaos` 
command you need to turn on the3 Python virtual environment that the command 
is installed into:

`source ~/.venvs/chaostk/bin/activate`{{execute}}

With the `chaostk` virtual environment activates, you should now be able to 
execute the `chaos run` command:

`chaos run`{{execute}}

By simply running `chaos run` without any further information you will be 
prompted to specify a `path`. This should be a path to a valid Chaos Toolkit 
chaos experiment specification, and you don't have one yet...

In the next step of this scenario you'll write your first, barebones chaos 
engineering experiment...


