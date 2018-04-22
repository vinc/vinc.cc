---
title: Provisioning.rb
---
Provisioning.rb
===============

Open PaaS provisioning.

This gem will install a `provision` command for provisioning an open
platform-as-a-service (PaaS) from a JSON manifest file.

Currently limited to dokku or flynn apps on AWS or DigitalOcean servers.


Installation
------------

    $ gem install provisioning

Alternatively you can build the gem from its repository:

    $ git clone git://github.com/vinc/provisioning.rb.git
    $ cd provisioning
    $ gem build provisioning.gemspec
    $ gem install provisioning-0.0.1.gem


Usage
-----

Provision a manifest file:

    $ provision manifest.sample.json
    Reading provisioning manifest file 'manifest.sample.json'
    ==> Provisioning digitalocean compute
    Uploading SSH key to DigitalOcean
    Creating server 'dokku1.sfo1.example.net'
    ==> Provisioning digitalocean dns
    Creating zone 'sfo1.example.net'
    Creating domain record A '@' to '104.131.186.241'
    Configue 'sfo1.example.net' with the following DNS servers:
      - ns1.example.net
      - ns2.example.net
    Creating domain record CNAME '*' to 'sfo1.example.net.'
    Configue 'example.com' to point to 'sfo1.example.net'
    Configue 'www.example.com' to point to 'sfo1.example.net'
    ==> Provisioning dokku platform
    Installing dokku v0.10.4 on '104.131.186.241'
    Creating dokku app 'example' on '104.131.186.241'
    Run `gem install dokku-cli` to get dokku client on your computer
    Adding dokku to git remotes
    Uploading SSH key to DigitalOcean
    Run `git push dokku master` to deploy your code

Sample manifest file (in JSON format)

```json
{
  "manifest": {
    "app": {
      "name": "example",
      "domains": ["example.com", "www.example.com"],
      "services": ["postgres", "redis"]
    },
    "platform": {
      "provider": "dokku",
      "version": "v0.10.4",
      "domain": "sfo1.example.net"
    },
    "compute": {
      "provider": "digitalocean",
      "region": "sfo1",
      "image": "ubuntu-16-04-x64",
      "size": "1gb"
    },
    "dns": {
      "provider": "digitalocean"
    }
  }
}
```


License
-------

Copyright (C) 2017 Vincent Ollivier. Released under MIT.
