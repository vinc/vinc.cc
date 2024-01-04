---
title: Reviewing December 2023
date: 2024-01-01
tags: news, nyx, moros, osdev
---

# Reviewing December 2023

I started December by participating in the [Advent of Code][0] for the first
week until I didn't have enough time before breakfast to continue. I did the
[challenges][1] in Ruby first with a bit of code golfing to produce short
solutions and then I rewrote some of them in [MOROS Lisp][2] to improve the
language like I did last year.

It was fun. I customized my boot script to start directly into the
Lisp interpreter and removed the need to load the core library manually. This
allowed me to go straight to coding after turning on the computer.

The language improved significantly with the addition of a `dict` type to
complement `list`, a `host` function to resolve hostnames, escape sequences
like `\e` to print ANSI colors easily, and more!

Additionally, I implemented a `hash` command to compute the SHA256 digest of a
file to make sure I can download and copy files without errors.

At the beginning of the month I also started a new project called [Nyx][3] to
have a [bedrock platform][4] to build MOROS. It's currently based on Alpine
Linux and provides a minimalist text-based Linux host with the same look and
feel as MOROS.

After that I updated this website and changed its theme from [solarized][5]
to [gruvbox][6] that I've been using everywhere since 2019. I really like the
result.

The rest of the first 3 weeks was spent on polishing a release of
[MOROS 0.10.2][7] in time for the winter solstice.

In the last week I took a coding break to try to see what data I could salvage
from 22 hard drives of [past computers][8] from the last 30 years. The oldest
drives no longer work, but most from around the year 2000 are still
surprisingly in good condition, whereas many produced after that are either
dead or full of errors.

[0]: https://adventofcode.com/
[1]: https://github.com/vinc/advent-of-code
[2]: https://github.com/vinc/moros/pull/556
[3]: https://github.com/vinc/nyx
[4]: https://permacomputing.net/bedrock_platform/
[5]: https://github.com/morhetz/gruvbox
[6]: https://ethanschoonover.com/solarized/
[7]: https://vinc.cc/news/2023/12/22/moros-0-10-2-released/
[8]: https://vinc.cc/computers/
