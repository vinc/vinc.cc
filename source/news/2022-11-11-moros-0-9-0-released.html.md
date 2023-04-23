---
title: MOROS 0.9.0
date: 2022-11-11
tags: news, moros, osdev
---

# MOROS 0.9.0

![MOROS 0.9.0](moros-0-9-0.png)

MOROS is a text-based hobby operating system targeting computers with a x86-64
architecture and a BIOS. It is inspired by Unix and ITS but is closer to a
modern DOS at the moment in term of features.

## What's new in MOROS 0.9.0?

- Added Conway's Game of Life
- Added cache to disk reads
- Improved HTTP server
- Improved shell redirections
- Improved Lisp interpreter with macros, TCO, Integer, Big Integer, and smaller
  language changes

Read the full list of changes on the
[CHANGELOG](https://github.com/vinc/moros/blob/v0.9.0/CHANGELOG.md)

## How to run MOROS?

The binary can be booted from USB on a computer with a BIOS or from a virtual
machine with Bochs, QEMU, or VirtualBox. Here's a quick way to do it with QEMU:

```
qemu-system-x86_64 -m 32 -cpu max -nic model=rtl8139 -soundhw pcspk -hda moros-v0.9.0.bin
```

Read more detailed instructions in the
[README](https://github.com/vinc/moros/blob/v0.9.0/README.md)
