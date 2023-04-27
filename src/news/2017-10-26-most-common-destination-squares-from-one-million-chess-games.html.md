---
title: Most common destination squares from 1M chess games
date: 2017-10-26
tags: chess
---

# Most common destination squares from one million chess games

I'm in the process of writing my own piece square tables (PST) for my chess
engine [littlewing][1] and I decided to try to extract some statistics from a
PGN database.

The best I could find was [KingBase Lite][2] with almost a million games with
`ELO > 2200`.

So I wrote a little script to count the most common destination squares from
every moves and here's the result:

Opening (loosely defined as more than 16 pieces remaining on the board):

[![openings](/images/kingbase-lite-2017-openings.png)][3]

Endings (16 pieces or less):

[![endings](/images/kingbase-lite-2017-endings.png)][4]

I can't use those values directly for my PST, but still it's interesting, we
can visually confirm a lot of rules from the images.

[1]: https://github.com/vinc/littlewing
[2]: http://www.kingbase-chess.net
[3]: /images/kingbase-lite-2017-openings.png
[4]: /images/kingbase-lite-2017-endings.png
