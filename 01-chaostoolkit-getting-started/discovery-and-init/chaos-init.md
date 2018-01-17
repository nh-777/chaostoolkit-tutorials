The `chaos discover` command retrieves as much information as possible from your target environment. With that to hand it's now possible to create, or initialise, your experiments for this environment quickly and easily using the `chaos init` command.

***NOTE:*** You _could_ write your chaos experiments from scratch without the use of `chaos discover` and `chaos init`. These commands are there to speed up this process.

Now you can use `chaos init` to pick up the output from `chaos discover`, which can be found in the default `./discovery.json` file, and provide some insights that help you identify what probes and actions you might want to use in order to create your experiment.

To create your experiment enter:

`chaos init`{{execute}}

You will now be guided through a set of steps to identify your experiment and to select probes and actions that you can add to your experiment. The first question will be to enter what title you want to use for your experiment:

```
[2018-01-17 13:49:59 INFO] Let's build a new experiment
Experiment's title: 
```

Enter a meaningful name of what your experiment might be looking to discover in your system as a weakness, such as:

```
Experiment's title: How is availability impacted when a service is destroyed
```

You'll then be asked what the `Steady State Hypothesis in a nutshell` is. This is simply a title, so since you may not know what you are looking for at this point you could specify `Exploring`.

Next you'll see a lit of the probes and actions that have been detected as possible against your targetted environment when you executed the `chaos discover` command:

```
Add an activity to your method
1) kill_microservice
2) remove_service_endpoint
3) scale_microservice
4) start_microservice
5) all_microservices_healthy
6) deployment_is_not_fully_available
7) microservice_available_and_healthy
8) microservice_is_not_available
9) read_microservices_logs
10) service_endpoint_is_initialized
Activity (0 to escape):
```

You're prompted for an activity to add to your experiment, and you can add as many as you like before you quit by entering `0`.

Let's add a `kill_microservice` action by entering `1`. You will then see:

```
Kill a microservice by `name` in the namespace `ns`.

The microservice is killed by deleting the deployment for it without
a graceful period to trigger an abrupt termination.

To work, the deployment must have a `service` label matching the
`name` of the microservice.
```

A description of the activity is provided and you can read it and select whether you really want to add it to your experiment by typing `y`. If you've changed your mind about using this activity, you can enter `N`.

Enter `y` and you will then be led through a sequence of instructions to configure your activity within your experiment's method:

```
Do you want to use this action? [y/N]: y
Argument's value for 'name': kill-it
Argument's value for 'ns' [default]: default
```

For now you're done so you can quit after entering this information by typing `N` when asked `Do you want to select another activity?`.

Once you've entered `N` you will see the following output:

```
[2018-01-17 15:22:17 INFO] Experiment created and saved in './experiment.json'
```

Congratulations! You've now created an experiment in the `experimnent.json` file based on your answers to the `chaos init command.


