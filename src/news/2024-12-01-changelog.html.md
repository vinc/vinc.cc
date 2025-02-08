---
title: Reviewing November 2024
date: 2024-12-01
tags: news, moros
---

# Reviewing November 2024

Another month working on [MOROS][1], my hobby operating system written in Rust,
with some improvements before the upcomming winter release: 

- Update clipboard behavior in editor ([#706](https://github.com/vinc/moros/pull/706))
- Update web commands ([#703](https://github.com/vinc/moros/pull/703))
- Improve documentation ([#697](https://github.com/vinc/moros/pull/697))
- Update HTTP server ([#702](https://github.com/vinc/moros/pull/702))
- Add network config devices ([#700](https://github.com/vinc/moros/pull/700))
- Upgrade base64 module ([#699](https://github.com/vinc/moros/pull/699))
- Improve Lisp ([#684](https://github.com/vinc/moros/pull/684))
- Fix clock API ([#698](https://github.com/vinc/moros/pull/698))

There is now a `browse` command (written in shell) to view web pages, and a
`fetch` command (written in lisp) to download files.

Some device files have also been created to manage the network from userspace:

- `/dev/net/gw`
- `/dev/net/ip`
- `/dev/net/mac`
- `/dev/net/usage`

Finally, I worked on a mascot for the OS, it's cute but it might be a little
too scary:

![Mascot](moros-mascot.png)

[1]: https://moros.cc
