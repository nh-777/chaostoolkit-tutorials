The Chaos Toolkit CLI, called `chaos`, comes with the `discover` command that can 
be used to explore what can be acted or probed upon in a given environment from within your own chaos experiments.

In our case here we already have a kubernetes environment and so we can use the `chaos discover` command to give us a report of what's available. 

To use the `chaos` 
command you need to turn on the Python virtual environment that the command 
is installed into:

`source ~/.venvs/chaostk/bin/activate`{{execute}}

With the `chaostk` virtual environment activated, you should now be able to 
execute the `chaos discover` command. The `chaos discover` command requires a minimum of one parameter, which is usually the extension it is to use to explore your particular environment. In this environment you have Kubernetes and so you can run the following command to discover what can be acted upon or probed within your kubernetes environment:

`chaos discover chaostoolkit-kubernetes`{{execute}}

***NOTE:*** You will see the warning `Could not locate the default kubeconfig file`, this is because the current tutorial does not have a cluster already configured as we don't need it for this tutorial. To turn off this message you could use the `--no-system-info`

You can specify other environments than Kubernetes for chaos toolkit to discover. For example, to discover what's available from your Cloud Foundry environment you would use  `chaos discover chaostoolkit-cloudfoundry`.

***NOTE:*** The `chaos discover chaostoolkit-kubernetes` command uses the default configuration that has been configured for your local `kubectl` command. 

When you execute `chaos discover chaostoolkit-kubernetes` you should see an output such as the following:

```
[2018-01-16 16:59:56 INFO] Attempting to download and install package 'chaostoolkit-kubernetes'
[2018-01-16 16:59:58 INFO] Package downloaded and installed in current environment
[2018-01-16 16:59:58 INFO] Discovering capabilities from chaostoolkit-kubernetes
[2018-01-16 16:59:58 INFO] Searching for actions
[2018-01-16 16:59:58 INFO] Searching for probes
[2018-01-16 16:59:58 INFO] Discovering Kubernetes system
[2018-01-16 16:59:58 INFO] Discovery report saved in ./discovery.json
```

Note the `Discovery report saved in ./discovery.json` message. Depending on the target environment the `chaos discover` command can result in a large amount of information about what can be done or probed in your chaos experiments. In the next tutorial you will see how you can use `chaos discover` in combination with `chaos init` to build your own Chaos Toolkit experiments quickly.

With the output of the `chaos discover` command to hand, you can now take what's been discovered and use that to create a new chaos experiment simply and easily...
