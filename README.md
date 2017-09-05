= PKI CA skeleton

This repository is designed as a skeleton for an offline, or well encrypted online, root CA.

It has several methods for handling the creation and signing of certs.

== Creating the Root CA

This should only be done once

=== Create the CA

```
openssl req -new -config ./openssl.conf
```