---
title: Releasing MOROS 0.10.3
date: 2024-03-20
tags: news, moros, osdev
---

# Releasing MOROS 0.10.3

![MOROS 0.10.2](moros-0-10-3.png)

[MOROS](http://moros.cc) is a text-based hobby operating system targeting
computers with a x86-64 architecture and a BIOS. It is inspired by Unix and ITS
but is closer to a modern DOS at the moment in term of features.

## What's new in MOROS 0.10.3?

- Added hashbang support to execute lisp or shell programs
- Added time synchronisation with a new ntp program
- Added escape sequences to the shell
- Added ANSI OSC color palette support
- Fixed memory and network issues
- Improved ATA driver performance

Read the full list of changes on the
[CHANGELOG](https://github.com/vinc/moros/blob/v0.10.3/CHANGELOG.md)

## How to run MOROS?

The binary can be booted from USB on a computer with a BIOS or from a virtual
machine with Bochs, QEMU, or VirtualBox. Here's a quick way to do it with QEMU:

```
qemu-system-x86_64 -m 32 -cpu max -nic model=rtl8139 -soundhw pcspk -hda moros-v0.10.3.bin
```

Read more detailed instructions in the
[README](https://github.com/vinc/moros/blob/v0.10.3/README.md)
