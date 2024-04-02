---
title: Reviewing March 2024
date: 2024-04-01
tags: news, moros, osdev
---

# Reviewing March 2024

Most of the month was spent preparing [MOROS 0.10.3][1] that I released on the
spring equinoxe.

After that I worked on improving the [random number generator][2] of my OS and
discovered a few bugs on the VGA driver that I was fuzzing by executing
`read /dev/random` all day long on many computers.

The remainder of the month was spent writing an [Intel PRO/1000 driver][3]
to support more recent network cards than the old RTL8139 family from the
begining of this century. There are still a few bugs on real hardware but some
of my test laptops will now have access to the Internet.

[1]: /news/2024/03/20/moros-0-10-3-released/
[2]: https://github.com/vinc/moros/pull/602
[3]: https://github.com/vinc/moros/pull/337
