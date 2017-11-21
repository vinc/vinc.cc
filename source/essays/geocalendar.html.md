---
title: Geographic calendar
---

# Geographic calendar

The geographic calendar or geocalendar is a Earth based lunisolar calendar
with decimal time.


## 1. Notation

Its units are the year, month, day, centiday, and dimiday. A date is
represented by a series of two digits for each unit separated by colons:

    YY:MM:DD:CC:BB (LAT, LON)

Every date should be accompanied by a set of geographic coordinates.


## 2. Example

    14:03:03:71:59 (48.5136, -2.7653)

This example can be read as 14 years, 3 months, 3 days, 71 centidays, and 54
dimidays since the beginning of this calendar.

The notation can be split in two parts: this first one representing the date
of a day, `14:03:03` in the example, and the second one, `71:51`, the time.


## 3. Lunisolar calendar

This section describes the units representing the date of a day in the
calendar.


### 3.1. Day

At the moment most human beings still live on the surface of Earth, the
third planet orbiting the Sun.

In space, or any environments disconnected from the natural cycles of our
planet, it could be easier to use only one unit of time. The Metric time, for
example, uses only the second and its multiples like the kilosecond or the
megasecond to measure longer stretches of time. But on Earth we can use a few
simple astronomical observations, like the movement of the Sun, to help us mark
the passage of time.

At any latitude outside of the polar circles, the Sun rises and sets
periodically in the sky, alternating between a period of brightness when it is
visible above the horizon and darkness otherwise. The Sun will reach its
highest point in the sky at noon and its lowest point, usually below the
horizon, at midnight. This phenomenon, caused by the rotation of the Earth on
its axis, give us the day, the main unit of the geographic calendar.

Human beings, like many other animals, adapted to those conditions by sleeping
during the period of darkness and by being more active during the day. This
long resting time during the night give us the impression of starting a new
cycle every morning when we wake up and regain consciousness. The change to a
new day should therefor occurs at or before our awaking. But the moment we wake
up is subject to variations, as is the sunrise, so a more regular time to mark
the beginning of the day is midnight: when the Sun is at its lowest point below
the horizon, or when our position on Earth is at the most opposite side from
the Sun.

The mean solar day is defined by the yearly average interval of time between
two midnights during one orbit of the Earth around the Sun, it is about 86,400
seconds.

In day to day observation, the apparent duration of a day may differ by as much
as 30 seconds compared to the mean solar day because the orbit of the Earth is
not exactly circular. But when this calendar refers to the duration of a day,
it should be understood as a mean solar day.

It should also be noted that the start of a day is a local phenomenon, midnight
is always related to the longitudinal position of the observer. Using time
zones would mean introducing inaccuracies in the calendar, so every date should
be accompanied by a set of geographical coordinates instead.

To perform time comparisons between different locations we should therefor
revert to a universal time system.


### 3.2. Month

The Earth has a natural satellite orbiting 1.25 light seconds away, the Moon,
that is almost a third of its size. Its apparent diameter in the sky varies
slightly depending on its elliptic orbit, but it is, by coincidence,
approximately the same as the Sun.

The Moon is tidally locked to Earth, so it always shows the same face in the
sky, but its illumination varies during the course of its orbit around the
Earth.

In the geographic calendar, a month starts on the day when the new moon takes
place, that is when the Moon is closest to the Sun and the darkest in the sky.

A month can be further divided into four weeks.

The first week occurs during the waxing crescent until the right half of the
satellite is illuminated by the Sun at the first quarter moon in the northern
hemisphere. In the southern hemisphere it is the left half that will appear
illuminated. At this time the Moon is visible during the afternoon.

The second week takes place during the waxing gibbous until the full moon is
visible during the night.

It is followed by the waning gibbous during the third week until the last
quarter moon, visible during the morning. This time it is the left side that is
illuminated in the northern hemisphere, and the right side in the southern one.

Finally comes the fourth and last week during the waning crescent until the
next new moon marking the beginning of the next month.

It takes 27.32 solar days for the Moon to orbit the Earth during a sidereal
month. But because the Earth moves on its orbit around the Sun at the same
time, the duration between two new moons, called a synodic month, is
approximately equal to 29.53 days. Therefor some months, known as the full
months, will be 30 days long, while others, the hollow months, will only last
29 days.


### 3.3. Year

A solar year is defined by the duration of one orbit of the Earth around the
Sun, or about 365.24 days on average.

The Earth's axe of rotation is tilted, which means that during half of the year
the northern hemisphere will progressively get longer nights than the southern
hemisphere, with more dramatic changes at higher latitudes near the north pole
where the Sun never rises in the sky for a few months.

At temperate latitudes, the Sun reaches the highest elevation in the sky at the
summer solstice and the lowest at the winter solstice. The day of the summer
solstice is the longest day of the year, and the day of the winter solstice is
the shortest day.

This variation in sunlight gives the Earth its seasons. This cycle is the
reason why the geographic calendar is a lunisolar calendar instead of a simpler
lunar calendar.

The number of months elapsed since the beginning of the calendar year is
tracked by a counter reset to zero every new year.

A new calendar year begins on the day of the first new moon, which fall on or
after the day of the winter solstice in the northern hemisphere.

There is a symmetry between the day starting at midnight and the year beginning
on the darkest night of the new moon after the longest night of the winter
solstice. Though this is true only in the northern hemisphere as it is summer
during this time in the southern hemisphere.

One imperfection of this system is the absence of relations between the orbit
of the Earth around the Sun and the Moon around the Earth. The solstice almost
never occurs the day of a new moon, so an intercalary month is needed. Some
calendar years will be 12 months long, while others with an intercalary month
will be 13 months long.

This calendar is also less regular than some systems because it uses
astronomical observations or computations to avoid the approximations
of more regular calendars based on algorithms like the Metonic cycle of 19
years, which is a common multiple of the solar year and the synodic lunar month.


### 3.4. Century

One additional unit, the century, is available to keep using only two digits to
represent the year for future dates. A century is 100 years.


## 4. Decimal time

Shorter units than the day are required to mark the passage of time. This
calendar uses decimal time represented by a fraction of the day to keep it as
simple as possible.


### 4.1. Centiday

A hundredth of a day, or centiday, has been chosen over a ten or a thousandth
of a day to provide enough discrete time intervals for precise precise time
measurements while minimizing communication time. "Forty two centidays" is much
faster to say than "four hundred and two millidays". And it keeps all units in
groups of two digits.

A centiday is an hundredth of a day, or one percent of a day. It is equivalent
to the minute of the French Revolutionary Time and the Chinese unit "ke".

In the metric system, a mean solar day is 86,400 seconds long, so the duration
of a centiday is equal to 864 seconds or 14.4 minutes.

A clock in centidays will show the time elapsed since the beginning of the day.
For example, it will show 50 at local noon because it occurs 50 centidays or
half a day after midnight.


### 4.2. Dimiday

Shorter units of time would be useful for more precise measurements so we can
divide the day again to get a hundredth of a centiday (8.64 seconds) or a even
a thousandth (0.864 seconds).

Those short durations can be associated to physiological phenomenon of adult
humans. The former is slightly lower than the normal respiration rate at rest,
so this unit of time could be called a breath. And the latter, in the range of
a normal heart at rest, could be called a beat.

The former is preferred to keep using two digits per units and because the
latter would be competing with the second used in the universal metric system.

The primary name of this unit is the dimiday, an obsolete metric prefix
equivalent to decimilliday (or centicentiday). It is known as "fen" in some
Chinese calendars.


## 4.3. Epoch

The day `00:00:00` of this calendar corresponds to `1970-01-01` of the
Gregorian calendar. The beginning of this day at midnight along the Greenwich
meridian is known as the Unix epoch, it is used by modern computers to mark
the passage of time by counting the number of seconds elapsed since then.

The previous example, `14:03:03:71:59`, would be translated to `449947500` for
a computer, which is almost 450 megaseconds since the Unix epoch.

The first new moon after the December solstice of the year 1969 in the
Gregorian calendar happened 215 seconds into the year 1970 at the Greenwich
meridian, or 215 seconds after Unix epoch. This event marks the exact beginning
of the geographic calendar. It is interesting to note that the same thing
happened exactly 44 years later when this calendar was first conceived.

    00:00:00:00:00 // 1970-01-01 00:03:35 UTC
    44:00:00:00:00 // 2014-01-01 00:03:35 UTC

The beginning of this calendar is also quite close to the date a human first
walked on the surface of the Moon.


<!--
## 5. Changelog

- 0.2.0 - 1490006543
  - Second draft of this document
- 0.1.0 - 1429401491
  - First draft of this document
-->