---
title: Releasing MOROS 0.10.1
date: 2023-09-23
tags: news, moros, osdev
---

# Releasing MOROS 0.10.1

![MOROS 0.10.1](moros-0-10-1.png)

MOROS is a text-based hobby operating system targeting computers with a x86-64
architecture and a BIOS. It is inspired by Unix and ITS but is closer to a
modern DOS at the moment in term of features.

## What's new in MOROS 0.10.1?


- Added network system calls
- Increased drawing speed in VGA text mode
- Fixed a filesystem bug preventing to allocate more than 512 blocks
- Fixed some bugs in the editor and the shell

Read the full list of changes on the
[CHANGELOG](https://github.com/vinc/moros/blob/v0.10.1/CHANGELOG.md)

## How to run MOROS?

The binary can be booted from USB on a computer with a BIOS or from a virtual
machine with Bochs, QEMU, or VirtualBox. Here's a quick way to do it with QEMU:

```
qemu-system-x86_64 -m 32 -cpu max -nic model=rtl8139 -soundhw pcspk -hda moros-v0.10.1.bin
```

Read more detailed instructions in the
[README](https://github.com/vinc/moros/blob/v0.10.1/README.md)
