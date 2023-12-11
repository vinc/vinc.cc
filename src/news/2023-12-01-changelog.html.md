---
title: Updates for November 2023
date: 2023-12-01
tags: news, moros, osdev
---

# Updates for November 2023

In November I mostly used my spare time to work on my hobby operating system
[MOROS][0].

I was finally able to merge a feature adding a dedicated [page table][1] to
each process that I started a year ago. And from there I merged another even
older feature adding a [userspace allocator][2] with two new `ALLOC` and `FREE`
syscalls. Next step was a little improvement to spawn a new process from
userspace which is the first step for a [userspace shell][3]. I also started
working on adding an assembler to the system.

In parallel to that system work I improved the documentation, I added
hexadecimal and binary numbers support to the Lisp interpreter, and I added a
`hash` command to compute file digests with SHA256.

I also added a Gruvbox light theme to [moros.cc][4], the website hosting the
documentation.

[0]: https://github.com/vinc/moros
[1]: https://github.com/vinc/moros/pull/454
[2]: https://github.com/vinc/moros/pull/544
[3]: https://github.com/vinc/moros/pull/548
[4]: http://moros.cc
