---
title: MOROS 0.8.0
date: 2022-07-08
tags: news, moros, osdev
---

# MOROS 0.8.0

![MOROS 0.8.0](moros-0-8-0.png)

MOROS is a text-based hobby operating system targeting computers with a x86-64
architecture and a BIOS. It is inspired by Unix and ITS but is closer to a
modern DOS at the moment in term of features.

## What's new in MOROS 0.8.0?

- Userspace programs can now be written in Rust! They can also have command
  line arguments and return an exit code
- New commands were added: `reboot`, `socket`, `time`
- The shell got improved with the addition of variables, aliases, globbing, and
  tilde expansion
- The Python FUSE driver can now write and delete files from a filesystem image

Read the full list of changes on the
[CHANGELOG](https://github.com/vinc/moros/blob/v0.8.0/CHANGELOG.md)

## How to run MOROS?

The binary can be booted from USB on a computer with a BIOS or from a virtual
machine with Bochs, QEMU, or VirtualBox. Here's a quick way to do it with QEMU:

```
qemu-system-x86_64 -m 32 -cpu max -nic model=rtl8139 -soundhw pcspk -hda moros-v0.8.0.bin
```

Read more detailed instructions in the
[README](https://github.com/vinc/moros/blob/v0.8.0/README.md)
