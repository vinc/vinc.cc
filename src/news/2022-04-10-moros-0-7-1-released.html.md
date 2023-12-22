---
title: Releasing MOROS 0.7.1
date: 2022-04-10
tags: news, moros, osdev
---

# Releasing MOROS 0.7.1

![MOROS 0.7.1](moros-0-7-1.png)

[MOROS](http://moros.cc) is a text-based hobby operating system targeting computers with a x86-64
architecture and a BIOS. It is inspired by Unix and ITS but is closer to a
modern DOS at the moment in term of features.

## What's new in MOROS 0.7.1?
- A new game `2048` was added
- Lots of little improvements

Read the full list of changes on the
[CHANGELOG](https://github.com/vinc/moros/blob/v0.7.1/CHANGELOG.md)

## How to run MOROS?

The binary can be booted from USB on a computer with a BIOS or from a virtual
machine with Bochs, QEMU, or VirtualBox. Here's a quick way to do it with QEMU:

```
qemu-system-x86_64 -m 32 -cpu max -nic model=rtl8139 -soundhw pcspk -hda moros-v0.7.1.bin
```

Read more detailed instructions in the
[README](https://github.com/vinc/moros/blob/v0.7.1/README.md)
