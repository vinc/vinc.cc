---
title: Updating MOROS website
date: 2023-04-28
tags: news, moros
---

# Updating MOROS website

I wrote a script to convert the documentation of my hobby operating system
[MOROS][1] from Markdown to HTML to improve the content of its [website][2].

Instead of just one screenshot and a few lines of text the homepage now has a
list of features with links to the individual documentation pages. And there's
a [manual][3] to get started using the system.

I also updated the online demo image and put a link to it at the bottom of the
homepage:

    $ ssh guest@try.moros.cc

Right now the server hosting the website is managed by Dokku, with a Nginx
service on an Ubuntu machine with Docker in the middle. But I'm also hosting
a test version of the website inside MOROS running on QEMU.

[1]: /software/moros
[2]: http://moros.cc
[3]: http://moros.cc/manual.html
