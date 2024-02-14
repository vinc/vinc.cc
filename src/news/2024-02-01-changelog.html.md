---
title: Reviewing January 2024
date: 2024-02-01
tags: news, moros, osdev, domotics
---

# Reviewing January 2024

Most of my free time in January was spent on [MOROS][0], my hobby operating
system.

First I explored the idea of printing its source code on archival paper which
gave me a second reason to refactor the code to fit the lines under 80 chars.
The first reason has always been that the VGA Text Mode is limited to 80x25 in
size, but I prefer to go up to 100 or even 120 chars on the host system.

It took quite a bit of work because I didn't like the result of simply running
`cargo fmt`. When I was done I wrote a small script to download all the source
code inside the OS to `/src` in case one want to read or edit it.

After that I started a serie of small features to improve the system. The first
one was adding [ANSI OSC color palette support][1] to the userspace like Linux
does to avoid calling a kernel function for that. And then I added a simple but
very usefull implementation of [hashbang support][2] to run scripts in `/bin`
as if they were binaries.

The rest of the time was spent buying some devices to create a Zigbee network
to monitor the home. I want to see how much electricity the house is using in
real time and control the electric heaters to heat the house in a smarter way.

I already have 1-wire temperature sensors everywhere but I added some devices
with a screen to measure and display the temperature and humidity in various
rooms.

I bought a couple of old but inexpensive Lenovo ThinkCentre M83 SFF computers
instead of using yet another Raspberry Pi to install [Home Assistant][3] in a
virtual machine. I will also test [Proxmox][4] as an hypervisor. And if all
goes well I will install it on the big Dell PowerEdge R710 servers in my
homelab rack instead of Ubuntu.

[0]: http://moros.cc
[1]: https://github.com/vinc/moros/pull/566
[2]: https://github.com/vinc/moros/pull/570
[3]: https://www.home-assistant.io/
[4]: https://www.proxmox.com/en/
