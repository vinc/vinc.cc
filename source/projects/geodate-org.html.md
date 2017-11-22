---
title: Geodate.org
---
# Geodate

**Definition:** a geodate is a geocentric expression of a point in time.


## Specification

This document defines three different formats of geodate representation
for associating a position on the planet Earth with a date.

### Legacy format

A number of existing systems can be combined to locate an event in space and time:

- geographic [latitude][1] and [longitude][2] (degrees, minutes, seconds, direction)
- [gregorian calendar][3] (years, months, days)
- [24-hour clock][4] (hours, minutes, seconds)
- [time zone][5]

But the result, though most familiar, can be source of errors due to the many
different conventions used for representing the various parts.

**Example:**

    (51°10'44" N, 1°49'34" W) 2014-06-21 04:51:15 BST

[1]: https://en.wikipedia.org/wiki/Latitude
[2]: https://en.wikipedia.org/wiki/Longitude
[3]: https://en.wikipedia.org/wiki/Gregorian_calendar
[4]: https://en.wikipedia.org/wiki/24-hour_clock
[5]: https://en.wikipedia.org/wiki/Time_zone
[6]: https://en.wikipedia.org/wiki/List_of_time_zone_abbreviations


### Machine format

Fortunately a geodate can also be expressed with a simple set of three
numbers that any machine can parse and understand.

**Format:**

    <latitude> <longitude> <timestamp>

- latitude in decimal degrees
- longitude in decimal degrees
- seconds since unix epoch

**Example:**

    51.1789 -1.8262 1403322675


### Human readable format

A geodate is purely local, as such it would be natural to go back to a
[lunisolar calendar][31] previously used by many cultures and based on the
phases of the Moon for the [month][32] and the position of the Sun in the sky
for the [year][33] and the [day][34].

With such a system, one would just have to go periodically outside and look up
to know the time.

This local notation should always convert back to universal time using the
previously defined computer friendly format.

**Format:**

    (<latitude> <longitude>) <year>:<month>:<day>:<centiday>:<dimiday>

- geographic coordinates
  - latitude in decimal degrees
  - longitude in decimal degrees
- lunisolar calendar
  - year (count of [second solstices][35] since epoch)
  - month (count of [new moons][36] since begining of year)
  - day (count of days since begining of month)
- decimal fractions of the [local mean solar day][37] (86400 seconds)
  - centiday (0.01 days)
  - dimiday  (0.01 centidays or 8.64 seconds)

**Example:**

    (51.1789 -1.8262) 14:05:24:15:42

[31]: https://en.wikipedia.org/wiki/Lunisolar_calendar
[32]: https://en.wikipedia.org/wiki/Orbit_of_the_Moon
[33]: https://en.wikipedia.org/wiki/Earth%27s_orbit
[34]: https://en.wikipedia.org/wiki/Earth%27s_rotation
[35]: https://en.wikipedia.org/wiki/December_solstice
[36]: https://en.wikipedia.org/wiki/New_moon
[37]: https://en.m.wikipedia.org/wiki/Local_mean_time

## Computer programs

The following open source software use precise astronomical algorithms to
convert a geodate from machine format into human readable format:

- [Rust library and binary][41] ([source][42])
- [Android clock][43] ([source][44])
- [Web clock][45] ([source][46])

[41]: https://crates.io/crates/geodate
[42]: https://github.com/vinc/geodate
[43]: https://play.google.com/store/apps/details?id=com.vinua.geodate
[44]: https://github.com/vinc/geodate-android
[45]: https://clock.geodate.org
[46]: https://github.com/vinc/geodate-wasm


## License

Made with &hearts; by [vinc][51], licensed under [Creative Commons Attribution 4.0][52].

[51]: https://vinc.cc
[52]: https://creativecommons.org/licenses/by/4.0/
