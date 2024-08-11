---
title: Reviewing June 2024
date: 2024-07-01
tags: news, moros, osdev, bonsai
---

# Reviewing June 2024

This month was mostly dedicated to [MOROS 0.10.4][1], which I released on the
summer solstice, with an additional fix for an issue with [block bitmap area
calculation][2] that didn't make the cut. It is a breaking change that I will
merge before the next release.

I also updated Nyx, the bedrock platform to build MOROS, based on Alpine Linux
and Rust. I added a server mode to [Chatai][3] to have access to GPT-4 from
MOROS via a computer running it. On the same topic, I updated [Fetch][4], an
HTTP/0.9 server and proxy to HTTPS, Gemini, and Gopher, which I use from MOROS
in the same fashion.


[1]: /news/2024/06/20/moros-0-10-4-released/
[2]: https://github.com/vinc/moros/pull/638
[3]: https://github.com/vinc/chatai
[4]: https://github.com/vinc/fetch
