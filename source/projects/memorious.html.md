---
title: Memorious
---

Memorious
=========

Minimalist command line password manager.


Synopsis
--------

Memorious is just a small shell script wrapping the classic process of
storing your passwords in a CSV file encrypted by GPG with AES-256 and
a keyfile.

This program used to be written in Python and to rely on PyCrypto with
a SQLite database loaded on the fly in memory but this new version is
faster and simpler.


Installation
------------

To install `memorious` from source:

    $ git clone git://github.com/vinc/memorious.git
    $ cd memorious
    $ sudo cp memorious.sh /usr/local/bin/memorious
    $ sudo chmod a+x /usr/local/bin/memorious

You will need `gpg` and optionally `xclip` to use this program.


Usage
-----

Create a keyfile to encrypt and decrypt the memfile:

    $ memorious new

Those two files are stored in `~/.memorious`.

Note: in the future this program may evolve to rely on storing a passphrase
in `gpg-agent`, but for now it is up to you to decide how best to secure the
content of this directory so that the keyfile is not readable when not in use.

Generate a password for an account and copy it to clipboard:

    $ memorious set --domain example.com --username alice --copy
    Generated password: *copied*

Add an account with an existing password:

    $ memorious set --domain example.com --username bob --password secret

List all accounts:

    $ memorious get
    domain       username  password          comment
    example.com  alice     QFzcxisbkt2a5+fU
    example.com  bob       secret
    github.com   alice     Zc8Uid/cuYNU5p2u

Filter accounts by domain:

    $ memorious get --domain example.com
    domain       username  password          comment
    example.com  alice     QFzcxisbkt2a5+fU
    example.com  bob       secret

Get a password for an account:

    $ memorious get --domain example.com --username alice --copy
    domain       username  password  comment
    example.com  alice     *copied*


License
-------

Copyright (C) 2010-2017 Vincent Ollivier. Released under GNU GPL License v3.
