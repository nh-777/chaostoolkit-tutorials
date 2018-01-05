The [Chaos Engineering](http://www.oreilly.com/webops-perf/free/chaos-engineering.csp) book describes a Stead State Hypothesis as:

***"a model that characterizes the steady state of the system based on expected values of the business metrics."***

One way to think of this is that the Steady State describes what ***normal*** might look like vfor your system, within specieid tolerances. While a complete discussion of what would make a good measurement and tolerances to form part of a great Steady State Hypothesis for your system is beyond the scope of this tutorial, it's enough to declare that it is the collection of measurements you can make that declares what **ok** might look like for your system, even under extreme conditions.

TBD: Our hypothesis is that the service should not break but simply try again until the file comes back.

Our experiment should try that hypothesis to see where our system stands.

For your simple experiment, the Steady State Hypothesis is very simple indeed in that it merely asks ***"The file can be present, or not, and that's ok".

<pre class="file" data-filename="experiment.json" data-target="replace">
{
    "title": "Is all ok after a particular file is deleted?",
    "description": "The system's steady-state-hypothesis should be within tolerances even when a particular file is deleted",
    "tags": [
        "tutorial",
        "filesystem"
    ],
</pre>

The Chaos Toolkit uses the Steady State Hypothesis for two purposes. It is used as a check before an experiment is run that the target system is in a recognised ***normal*** state. The Steady State Hypothesis is also used as the template for comparison of the state of your system ***after*** the experiment has been run, forming the results provided by the experimental report.

Now it's time to implement your Chaos Toolkit experiment's method...
