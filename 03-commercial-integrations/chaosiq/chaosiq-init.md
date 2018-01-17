[ChaosIQ](http://www.chaosiq.io/) has extended the output of `chaos discover` with additional, suggested insights and experiments based on what it can detect about your system topology. [ChaosIQ](http://www.chaosiq.io/) tries to supply as many effective and helpful experiments, tailored to your system, as you might need to build real confidence in your system's availability.

Using the usual `chaos init` command, you can use [ChaosIQ](http://www.chaosiq.io/) to create a full experiment:

`chaos init`{{execute}}

When you execute this command you will be asked if you want to use [ChaosIQ](http://www.chaosiq.io/) for this Chaos Toolkit feature, or the regular Chaos Toolkit `chaos init` functionality:

```
Use 'chaosiq' init feature or the chaostoolkit 'default' [chaosiq]:
```

Simply press `Enter` to select the default of `chaosiq` then you should see:

```
0) System is resilient to pod's failures
```

By entering `0` you will generate a new experiment, suggested by [ChaosIQ](http://www.chaosiq.io/), that you can then amend if necessary for your particular environment:

```
Please select an experiment: 0
[2018-01-17 16:59:49 INFO] You have selected experiment: 'System is resilient to pod's failures'
[2018-01-17 16:59:49 INFO] Saving to './experiment.json'
[2018-01-17 16:59:49 INFO] You may now run this experiment with `chaos run ./experiment.json`
```

As the output now indicates, you can now edit and run your ready-made chaos engineering experiment using `chaos run ./experiment.json`.
