---
title: Homelab
---

# Homelab

- TP-Link TL-SG1024
- Raspberry Pi 3 Model B+ (2018)
- Raspberry Pi 1 Model B (2012)
- HP ProLiant MicroServer N40L (2012)
- Lenovo ThinkCentre M83 SFF (2013)
- Lenovo ThinkCentre M83 SFF (2013)
- Dell PowerEdge R710 II (2011)
- Dell PowerEdge R710 (2009)
- Sun Fire V20z (2004)
- Sun Fire V20z (2004)
- Eaton 3S 700
- Eaton 3S 700
- Eaton 5P 850IR

![Homelab in March 2024](homelab-1.jpg)

The Sun Fire have released their smokes but I plan to restore them at some
point.  The Dell PowerEdge are only run in winter to test my chess engine and
provide heat upstairs, they have an incredible amount of RAM given their ages.
The Lenovo ThinkCentre provide a low power alternative during summer time.  The
HP ProLiant has a ZFS RAIDZ2 array of 4 disks to store my important files.  The
Raspberry Pi are powered directly from the Eaton 3S USB ports.

## Services

### Raspberry Pi 3

- Monitoring (Munin)
- ADS-B (Skyaware)

### Raspberry Pi 1

- NTP (GPS + PPS)
- DNS (Pi-hole)

### HP ProLiant MicroServer N40L

- ZFS (OpenIndiana)

### Lenovo ThinkCentre M83 SFF

- Proxmox
- Home Assistant

### Dell PowerEdge R710

- Proxmox
- Chess
