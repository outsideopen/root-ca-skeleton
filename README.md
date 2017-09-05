= PKI CA skeleton

This repository is designed as a skeleton for an offline, or well encrypted online, root CA.

It has several methods for handling the creation and signing of certs.

== Using the Root CA

Before starting it is recommended to update the openssl.conf for your needs.

Specifically the `req_distinguished_name` and the `server_cert::crlDistributionPoints` settings for your ca data