---
title: Little Wing 0.4.0 is out!
date: 2017-11-20
tags: news, littlewing, chess
---

# Little Wing 0.4.0 is out!

After a month of intense work, the new version 0.4.0 of [Little Wing][1], a
bitboard chess engine written in Rust, is out!

It should play better chess now, going up in strength from 1650 ELO to a bit
over 2000 ELO:

    Rank Name                         Elo    +    - games score oppo. draws
       1 Dorpsgek Dillinger 1        2257   10   10  4800   72%  2066   12%
       2 RattateChess 1.0 Nosferatu  2200    9    9  4799   65%  2074   13%
       3 Sjaak II 1.4.1              2183    9    9  4799   63%  2077   15%
       4 Napoleon                    2115    9    9  4800   53%  2086   14%
       5 Little Wing v0.4.0          2054    9    9  4799   45%  2095   14%
       6 Poor little Pinkus          2039    9    9  4799   43%  2097   11%
       7 Cinnamon 2.0                2027    9    9  4798   41%  2099   14%
       8 Sayuri 2017.09.29           1844   11   11  4800   19%  2125    9%

There's still a lot of work to do on the evaluation side but I'm happy with the
search side for now.

## Added

- Add library with public API and documentation
- Add getopt to parse program options
- Add readline to user interface
- Add piece square tables to evaluation
- Add upper and lower bounds in transposition table
- Add age field in transposition table
- Add delta pruning to quiescence search
- Add transposition table to quiescence search
- Add basic UCI support
- Add very basic parallel search in threads with shared transposition table

## Changed

- Improve CLI
- Improve statistics debug output
- Refactor many parts of the code
- Allow NMP, IID, and LMR at shallower depth
- Set NMP R to 3

## Links

- https://github.com/vinc/littlewing
- https://vinc.cc/binaries/littlewing/littlewing-v0.4.0.tar.gz
- https://vinc.cc/binaries/littlewing/sha1sums.txt
- https://docs.rs/littlewing/0.4.0/littlewing/

[1]: https://github.com/vinc/littlewing
