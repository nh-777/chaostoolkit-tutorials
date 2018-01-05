Now you have your system, represented as a single Python service in `service.py`, and your experiment all set to explore a potential weakness in that system, captured in the `experiment.json` file.

Before running your experiment you need to ensure that your service is running. To do that you should open a new terminal window and then execute the following command in that window:

`python3 service.py`{{execute}}

One the service is running, navigate back to the original terminal window and run the following command to execute your Chaos Toolkit experiment:

`chaos run experiment.json`{{execute}}
