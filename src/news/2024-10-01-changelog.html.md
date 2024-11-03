---
title: Reviewing September 2024
date: 2024-10-01
tags: news, cloudcheck.cc, moros
---

# Reviewing September 2024

## CloudCheck

The first week of this month was spent wrapping up my work on
[CloudCheck][1], a project I've been contemplating since early 2023 to
help small teams [reduce cloud waste][2]. The MVP and the landing page
are complete, but I didn't succeed in finding enough people interested
in trying the service or providing feedback.

I tried to work on customer discovery during the previous year, but a
failure to make enough progress pushed the project to the back burner.
Eventually, I decided to spend up to a month coding it anyway to see
what would happen. I confirmed once again that "if you build it, they
will come" is not true. However, the time spent on the project was not
wasted. I got up to date with the latest Rails version and applied many
product ideas I had learned over the past two years.

I found CloudCheck useful for monitoring my servers and reducing my
cloud bills, so I'll keep using it and see where it goes. However, I
won't invest more time working on it without user feedback.

## MOROS

After that, I switched back to [MOROS][3], my hobby operating system
written in Rust. In comparison, talking about it and finding people
interested is much easier. I worked on many small features to improve
it during the month:

- Add `/dev/vga/font` device ([#653](https://github.com/vinc/moros/pull/653))
- Replace `base64` command with `encode` and `decode` ([#654](https://github.com/vinc/moros/pull/654))
- Add `kind` syscall ([#655](https://github.com/vinc/moros/pull/655))
- Update `hash` command ([#656](https://github.com/vinc/moros/pull/656))
- Add `diff` command ([#657](https://github.com/vinc/moros/pull/657))
- Add search to editor ([#659](https://github.com/vinc/moros/pull/659))
- Add a line mode to the editor ([#660](https://github.com/vinc/moros/pull/660))
- Add chess puzzle ([#662](https://github.com/vinc/moros/pull/662))
- Add `write --parents` option ([#664](https://github.com/vinc/moros/pull/664))
- Add `pkg` command ([#663](https://github.com/vinc/moros/pull/663))
- Improve option parsing ([#665](https://github.com/vinc/moros/pull/665))
- Add scrollback buffer support ([#627](https://github.com/vinc/moros/pull/627))
- Add search to viewer ([#666](https://github.com/vinc/moros/pull/666))
- Fix usage of CSI sequences for scrolling the scrollback buffer ([#667](https://github.com/vinc/moros/pull/667))
- Fix userspace heap address ([#668](https://github.com/vinc/moros/pull/668))
- Improve process code alloc ([#669](https://github.com/vinc/moros/pull/669))
- Align cursor after scrolling in the editor ([#671](https://github.com/vinc/moros/pull/671))
- Use `ptr::copy_nonoverlapping` to load binaries ([#670](https://github.com/vinc/moros/pull/670))
- Update Rust to nightly-2024-09-01 ([#672](https://github.com/vinc/moros/pull/672))
- Add special `alloc_error_handler` for userspace ([#673](https://github.com/vinc/moros/pull/673))
- Fix binary loading ([#674](https://github.com/vinc/moros/pull/674))
- Add more restrictive mapping on page fault ([#675](https://github.com/vinc/moros/pull/675))
- Enable userspace memory deallocation ([#676](https://github.com/vinc/moros/pull/676))
- Copy memory on instruction fetch page fault ([#677](https://github.com/vinc/moros/pull/677))
- Add `geodate` program ([#304](https://github.com/vinc/moros/pull/304))
- Fix shell autocomplete command path ([#678](https://github.com/vinc/moros/pull/678))
- Add `geocal` program ([#679](https://github.com/vinc/moros/pull/679))

I'm particularly happy about adding scrollback buffer support, allowing
me to scroll up in the console and no longer be limited to what was
last printed on the screen. Adding a search mode to the editor and some
ed-like commands will also make me more productive inside the OS.

A number of PRs are related to process memory, and I made some progress
in running more complex programs. Notably, my lunisolar calendar
[geodate][4] does a lot of astronomical computations that tested the
`alloc` and `free` syscalls. I had to introduce some workarounds to get
everything running, and the result is not bug-free. I'll have to do it
the right way later.

Finally I added a basic package manager called `pkg` to download files that
are not bundled with the kernel image.

[1]: https://cloudcheck.cc
[2]: https://stop.wasting.cloud
[3]: http://moros.cc
[4]: http://geodate.org
