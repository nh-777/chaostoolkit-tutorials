Let's imagine you have two services running in Kubernetes. One service, called
the consumer, fetches data from the other service, called the provider, over
the HTTP protocol.

In the current operational deployment, the consumer expects the provider to be
around when calling it. We do wonder however what would be the impact of such
an architectural choice when the provider goes down.

Our intuition obviously suggests the consequences on the consumer will be rather
bad but let's confirm (or infirm it) via a Chaos Toolkit experiment.

Before we get going, let's deploy our application:

`kubectl create -f consumer-service.json -f provider-service.json -f 01-before`{{execute}}

Wait until the system settles:

`kubectl get all`{{execute}}

Once the services are running, you can call them as follows: