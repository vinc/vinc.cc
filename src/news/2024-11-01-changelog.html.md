---
title: Reviewing October 2024
date: 2024-11-01
tags: news, moros, geodate
---

# Reviewing October 2024

![Mandelbrot](moros-mandelbrot.png)

This month, I focused primarily on [MOROS][1], my hobby operating system
written in Rust, resulting in these merged PRs:

- Use string instead of float as clock device output format ([#696](https://github.com/vinc/moros/pull/696))
- Add speaker device ([#693](https://github.com/vinc/moros/pull/693))
- List processors at boot ([#692](https://github.com/vinc/moros/pull/692))
- Create clock module ([#691](https://github.com/vinc/moros/pull/691))
- Create memory module ([#690](https://github.com/vinc/moros/pull/690))
- Add mandelbrot program ([#689](https://github.com/vinc/moros/pull/689))
- Refactor vga driver ([#688](https://github.com/vinc/moros/pull/688))
- Add VGA graphics ([#687](https://github.com/vinc/moros/pull/687))
- Free process memory on exit ([#686](https://github.com/vinc/moros/pull/686))
- Ensure uninitialized data is zeroed when loading binary ([#681](https://github.com/vinc/moros/pull/681))
- Update panic handler ([#680](https://github.com/vinc/moros/pull/680))

The most notable feature is the introduction of a graphic mode, with a
framebuffer and a customizable palette. I started by coding a program to
display BMP images and later played with a cool program to visualize the
[Mandelbrot set][2]. New device files were added for that:

- `/dev/vga/mode`
- `/dev/vga/buffer`
- `/dev/vga/palette`

Additionally, the following device files were also created or updated in other
PRs:

- `/dev/clk/boot`
- `/dev/clk/epoch`
- `/dev/clk/rtc`
- `/dev/speaker`

I undertook significant internal refactoring and I experimented, not quite
successfully yet, with relocating the kernel to higher half memory and
activating multiple processors. More on that later.

During the month I also created two PRs to improve [Geodate][3], my [lunisolar
calendar with decimal time][4] and I spent time solving [LeetCode][5] problems
in Ruby and MOROS Lisp to stay up to date as I will soon conclude this
funemployment period and seek my next full time job. If you're hiring a
senior/staff dev with Ruby or Rust expertise, please [let me know][6].

[1]: https://moros.cc
[2]: https://en.wikipedia.org/wiki/Mandelbrot_set
[3]: https://github.com/vinc/geodate
[4]: https://geodate.org
[5]: /software/leetcode
[6]: /contact
