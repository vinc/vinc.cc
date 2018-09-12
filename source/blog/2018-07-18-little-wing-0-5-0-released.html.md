---
title: Little Wing 0.5.0 released
date: 2018-07-18
tags: news, littlewing, chess
---

# Little Wing 0.5.0 released

After a few weeks of work and 8 months since the [last release][1] of
[Little Wing][2], a chess engine written in Rust, the new version 0.5.0 is
ready!

Most of the gain in strength (around 40 ELO) comes from a faster move generator
implementing hyperbola quintessence. But the two most important features are
Android support and an improved command line interface (CLI).

## Changelog

### Added

- Use Hyperbola Quintessence and First Rank Attacks for sliding piece attacks
- Use Xorshift random number generator for Zobrist hashing
- Add depth parameter to `perft` CLI command
- Add `save fen` and `save pgn` CLI commands
- Add `--silent` flag to executable

### Changed

- Improve CLI output
- Rename `load` CLI command to `load fen`
- Rename `Direction` to `Shift` and introduce a new (compass) `Direction`
- Rename `Move*` to `PieceMove*`
- Store castling rights in a u8 in `Position`
- Use fail-soft instead of fail-hard in search
- Refactor many parts of the code

## Tournament results

Here are the latest results of gauntlet tournaments with 40 moves in
60+0.6 seconds:

    Rank Name                         Elo    +    - games score oppo. draws
       1 Dorpsgek Dillinger 1        2244   13   13  2695   72%  2061   12% 
       2 RattateChess 1.0 Nosferatu  2200   12   12  2694   67%  2061   11% 
       3 Napoleon                    2101   12   12  2695   55%  2061   20% 
       4 Little Wing v0.5.0          2077    6    6 10548   54%  2044   14% 
       5 Cinnamon 2.0                2040   12   12  2690   47%  2061   18% 
       6 Little Wing v0.4.0          2033    8    8  6820   48%  2045   15% 
       7 Poor little Pinkus          1984   12   12  2693   40%  2061   13% 
       8 Sjaak II 1.4.1              1934   12   12  2694   34%  2061   16% 
       9 Sayuri 2018.05.23           1803   14   14  2695   20%  2061   10% 

And with 40 moves in 10+0.1 seconds:

    Rank Name                         Elo    +    - games score oppo. draws
       1 Dorpsgek Dillinger 1        2293    4    4 32751   75%  2086   11% 
       2 RattateChess 1.0 Nosferatu  2200    4    4 32747   64%  2086   11% 
       3 Napoleon                    2118    3    3 32747   54%  2086   17% 
       4 Little Wing v0.5.0          2096    3    3 49716   52%  2078   12% 
       5 Little Wing v0.4.0          2048    4    4 27439   46%  2078   13% 
       6 Sjaak II 1.4.1              1950    4    4 32738   33%  2086   13% 
       7 Sayuri 2018.05.23           1832    4    4 32743   21%  2086    9%

## Links

- https://github.com/vinc/littlewing
- https://vinc.cc/binaries/littlewing-v0.5.0
- https://docs.rs/littlewing/0.5.0/littlewing

[1]: /blog/2017/11/20/little-wing-0-4-0-is-out
[2]: https://github.com/vinc/littlewing
