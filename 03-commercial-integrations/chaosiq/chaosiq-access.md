To get access to ChaosIQ you will need a token. You can request a token using the [form provided on ChaosIQ.io](http://www.chaosiq.io/sign-up-for-alpha.html).

***NOTE:*** There are plans to make it possible to request and manage ChaosIQ token using the `chaosiq` command, however while the system is in private alpha it needs to be requested through the website.

Once you have received a token you need to generate a configuration file to place the token within using thew `chaosiq` command:

`chaosiq config init`{{execute}}

This command will create a `config` file in `~/.chaosiq` which is ready to take your new ChaosIQ token. Open that file and you will see the following:

<pre>
auth:
  token: <YOUR TOKEN>
</pre>

Replace `<YOUR TOKEN>` with the token supplied by ChaosIQ and save your `config` file. You're now ready to use ChaosIQ...