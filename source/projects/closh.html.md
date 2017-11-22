---
title: Closh
---
Cloud Shell
===========

[![Gem](https://img.shields.io/gem/v/closh.svg)](https://rubygems.org/gems/closh)
[![Travis branch](https://img.shields.io/travis/vinc/closh/master.svg)](https://travis-ci.org/vinc/closh/branches)
[![Gemnasium](https://img.shields.io/gemnasium/vinc/closh.svg)](https://gemnasium.com/github.com/vinc/closh)

Get a shell running in the cloud in seconds

[![asciicast](https://asciinema.org/a/146126.png)](https://asciinema.org/a/146126)


Installation
------------

    $ gem install closh

Alternatively you can build the gem from its repository:

    $ git clone git://github.com/vinc/closh.git
    $ cd closh
    $ gem build closh.gemspec
    $ gem install closh-0.0.1.gem


Usage
-----

Run a command in the cloud:

    $ closh -x "cut -d . -f 1 /proc/uptime"
    23

More verbose:

    $ closh -vx "cut -d . -f 1 /proc/uptime"
    debug: uploading SSH public key to AWS ...
    debug: creating server on AWS ...
    debug: connecting to 'ubuntu@158.116.77.89' ...
    debug: executing command 'cut -d . -f 1 /proc/uptime' ...
    23
    debug: destroying server ...

Pipe to stdin:

    $ echo "cut -d . -f 1 /proc/uptime" | closh -x "bash -s"

Run a script remotely:

    $ closh -x "bash -s" < example.sh

Skip the `-x` flag to keep a session alive for long running scripts.

Use `-l` to list sessions and `-r` to resume one:

    $ closh -r 158.116.77.89 "tail -f screenlog.0"

More options:

    $ closh -h
    Usage: closh <command>

    Cloud Shell v0.0.1
    Options:
      -n, --dry-run       Create fake server and run locally
      -c, --config=<s>    Config file (default: ~/.closh.yaml)
      -k, --key=<s>       SSH public key (default: ~/.ssh/id_rsa.pub)
      -r, --resume=<s>    Resume session
      -x, --kill          Kill session at the end
      -l, --list          List sessions
      -v, --verbose       Use verbose mode
      -h, --help          Show this message
      -V, --version       Print version and exit


Configure
---------

Cloud Shell is based on [Fog](http://fog.io/) under the hood to create compute
servers.

The configuration is stored in a YAML file (`~/.closh.yaml`). It is divided in
two parts: compute and server. The former being fed to `Fog::Compute.new` and
the latter to `Fog::Compute::*::Server.new`.

```yaml
---

compute:
  provider: AWS
  aws_access_key_id: <%= ENV["AWS_ACCESS_KEY_ID"] %>
  aws_secret_access_key: <%= ENV["AWS_SECRET_ACCESS_KEY"] %>
  region: us-west-2

server:
  image_id: ami-70728c08 # ubuntu 17.04 amd64 hvm:ebs-ssd
  flavor_id: t2.micro
  username: ubuntu
```


License
-------

Copyright (C) 2017 Vincent Ollivier. Released under MIT.
