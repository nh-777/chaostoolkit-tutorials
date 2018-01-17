[ChaosIQ](http://www.chaosiq.io/) extends the [Chaos Toolkit](http://chaostoolkit.org/) so that the `chaos discover` command can also suggest full experiments based on what has been discovered from your target system. 

Now that you have installed `chaosiq`, and set it up with a token, you can use `chaos discover` to see what experiments ChaosIQ recommends to provide insights into potential weaknesses in your own target system.

ChaosIQ integrates itself with the `chaos discover` command, so execute that now and you should see the new ChaosIQ-added information for your `chaos discover` command. To see this execute the `chaos discover` command:

`chaos discover chaostoolkit-kubernetes`{{execute}}

You should then see something like the following:

```
[2018-01-17 16:24:54 INFO] Attempting to download and install package 'chaostoolkit-kubernetes'
[2018-01-17 16:25:10 INFO] Package downloaded and installed in current environment
[2018-01-17 16:25:10 INFO] Discovering capabilities from chaostoolkit-kubernetes
[2018-01-17 16:25:10 INFO] Searching for actions
[2018-01-17 16:25:10 INFO] Searching for probes
[2018-01-17 16:25:11 INFO] Discovering Kubernetes system
[2018-01-17 16:25:11 WARNING] Could not locate the default kubeconfig file
[2018-01-17 16:25:11 INFO] Calling chaosiq to fetch potential experiments
[2018-01-17 16:25:11 INFO] 1 experiment suggestions were found
[2018-01-17 16:25:11 INFO] Discovery report saved in ./discovery.json
```

As usual the Chaos Toolkit has grabbed its kubernetes extension and then run its usual `chaos discover` process. There is however more information being provided by ChaosIQ, as shown nby the line that states `[2018-01-17 16:25:11 INFO] 1 experiment suggestions were found`.

ChaosIQ has added extra information to the `./discovery.json` file in the form of a collection, in this case just 1, of experiments that it suggests based on the system you are working with.

With more discovered and suggested, ChaosIQ can then extend the Chaos Toolkit further so that you can use these suggestions when you run the `chaos init` command...