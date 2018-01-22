To get access to [ChaosIQ](http://www.chaosiq.io/) you will need a token. You can request a token using the [form provided on ChaosIQ.io](http://www.chaosiq.io/sign-up-for-alpha.html).

***NOTE:*** There are plans to make it possible to request and manage [ChaosIQ](http://www.chaosiq.io/) token using the `chaosiq` command, however while the system is in private alpha it needs to be requested through the website.

Once you have received a token you need to login to [ChaosIQ](http://www.chaosiq.io/) using the `chaosiq` command:

`chaosiq login`{{execute}}

This command will prompt you for the email address you used to request your [ChaosIQ](http://www.chaosiq.io/) token, and the token itself. Note that to be secure the token will not be displayed as you enter it.

```
$ chaosiq login
Email: <your email address>
Token: <your token, which will be hidden as you type it>
You are logged into ChaosIQ
```

***NOTE:*** The token is stored in a `config` file in `~/.chaosiq`.

You're now ready to use [ChaosIQ](http://www.chaosiq.io/)...
