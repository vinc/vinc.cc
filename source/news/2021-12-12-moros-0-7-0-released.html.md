---
title: Releasing MOROS 0.7.0
date: 2021-12-12
tags: news, moros, osdev
---

# Releasing MOROS 0.7.0

MOROS is a text-based hobby operating system targeting computers with a x86-64
architecture and a BIOS. It is inspired by Unix and ITS but is closer to a
modern DOS at the moment in term of features.

## What's new in MOROS 0.7.0?
- A userspace has been added to run simple programs written with nasm with new
  syscalls (`spawn` and `exit`)
- New syscalls were added for the filesystem (`open`, `close`, `read`, `write`,
  and `stat`)
- a `FileIO` trait has been added to support device files (`/dev/random` and
  `/dev/console`)
- A new command `calc` was added
- The shell was improved with file redirections
- The lisp parser was rewritten with Nom and the language now support strings

Read the full list of changes on the
[CHANGELOG](https://github.com/vinc/moros/blob/v0.7.0/CHANGELOG.md)
