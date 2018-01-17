The `chaos discover` command retrieves as much information as possible from your target environment. With that to hand it's now possible to create, or initialise, your experiments for this environment quickly and easily using the `chaos init` command.

***NOTE:*** You _could_ write your chaos experiments from scratch without the use of `chaos discover` and `chaos init`. These commands are there to speed up this process.

Now you can use `chaos init` to pick up the output from `chaos discover`, which can be found in the default `./discovery.json` file, and provide some insights that help you identify what probes and actions you might want to use in order to create your experiment.

To create your experiment enter:

`chaos init`{{execute}}

You will now be guided through a set of steps to identify your experiment and to select probes and actions that you can add to your experiment.

