Every Chaos Toolkit experiment needs a method, which is the list of actions you'd like to perform on your system prior to checking again that the Stead State Hypothesis is within its tolerances.

As well as performaing actions against your system, you can also specify probes to grab additional data points during your experiment to help you further explore the consditions present within your system while the experiment is executing.

Your method for the experiment you're creating will:

* Move the `exchange.dat` file to a new, unexpected filename while the service is running so the service cannot find it where it expects it to be.
* Probe to see that the response of the running service has flipped to return `503` rather than the `404` that was originally produced.

<pre class="file" data-filename="experiment.json" data-target="append">
    "method": [
        {
            "name": "move-exchange-file",
            "type": "action",
            "provider": {
                "type": "python",
                "module": "os",
                "func": "rename",
                "arguments": {
                    "src": "./exchange.dat",
                    "dst": "./exchange.dat.old"
                }
            }
        },
        {
            "type": "probe",
            "name": "service-is-unavailable",
            "provider": {
                "type": "http",
                "expected_status": 503,
                "url": "http://localhost:8080/"
            }
        }
    ]
}
</pre>

Complete your `experiment.json` with the above code and then you're all set to run your first Chaos Toolkit experiment against your system... 