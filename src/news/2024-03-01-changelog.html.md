---
title: Reviewing February 2024
date: 2024-03-01
tags: news, moros, osdev, domotics
---

# Reviewing February 2024

In February, I found myself directly impacted by the ongoing economic downturn
in the tech industry. The company I've been working for almost 6 years ran out
of funds and all employees, myself included, got laid off. The past weeks were
challenging but now that it's all over I'll have some time to rest and reflect
on what I want to do next.

Nonetheless I still spent time on my side projects and made lots of little
improvements to [MOROS][0]:

- Add env vars to customize screen size ([#585](https://github.com/vinc/moros/pull/585))
- Add timeout to socket accept ([#584](https://github.com/vinc/moros/pull/584))
- Skip ATA drive selection when not needed ([#576](https://github.com/vinc/moros/pull/576))
- Initialize ACPI module at boot time ([#583](https://github.com/vinc/moros/pull/583))
- Display non printable ascii chars with a dark dot ([#580](https://github.com/vinc/moros/pull/580))
- Add time synchronisation with NTP ([#579](https://github.com/vinc/moros/pull/579))
- Add kernel log to buffer in memory ([#578](https://github.com/vinc/moros/pull/578))
- Fix socket status reading ([#575](https://github.com/vinc/moros/pull/575))
- Fix random memory issues ([#573](https://github.com/vinc/moros/pull/573))

I also added 16 GB of RAM and a SSD to one of the Lenovo ThinkCentre M83 SFF
computer I got last month, and installed [Proxmox][1] and [Home Assistant][2]
on it for my domotics project. It took a few days to setup everything but I got
all my Zigbee devices running and I started monitoring the house temperature,
humidity, and power consumption.

[0]: http://moros.cc
[1]: https://www.home-assistant.io/
[2]: https://www.proxmox.com/en/
