---
title: Releasing MOROS 0.10.4
date: 2024-06-20
tags: news, moros, osdev
---

# Releasing MOROS 0.10.4

![MOROS 0.10.4](moros-0-10-4.png)

[MOROS](http://moros.cc) is a text-based hobby operating system targeting
computers with a x86-64 architecture and a BIOS. It draws inspiration from Unix
and DOS to provide a simple and efficient environment for computing and
communication from the command line.

## What's new in MOROS 0.10.4?

- Added a new network driver for the Intel PRO/1000 cards
- Added a new text viewer
- Added file search to the `find` command
- Added file copy to directory to the `copy` command
- Added device creation to the `write` command
- Added a recursive option to the `hash` command
- Improved the DHCP client to make it faster
- Improved the RNG device to make it faster

Read the full list of changes on the
[CHANGELOG](https://github.com/vinc/moros/blob/v0.10.4/CHANGELOG.md)

## How to run MOROS?

The binary can be booted from USB on a computer with a BIOS or from a virtual
machine with Bochs, QEMU, or VirtualBox. Here's a quick way to do it with QEMU:

```
qemu-system-x86_64 -m 32 -cpu max -nic model=e1000 -soundhw pcspk -hda moros-v0.10.4.bin
```

Read more detailed instructions in the
[README](https://github.com/vinc/moros/blob/v0.10.4/README.md)
