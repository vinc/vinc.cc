---
title: Releasing Little Wing 0.6.0
date: 2019-12-22
tags: news, littlewing, chess
---

# Releasing Little Wing 0.6.0

[Little Wing][1] is a chess engine written in Rust with a command line
interface (CLI) and support for UCI and Xboard protocols. 

After a year and a half since the [last release][2], a new version 0.6.0 is
ready! It is expected to be 100 ELO stronger by [increasing futility pruning
depth][3], and the CLI is now much improved with support for SAN moves, PGN
saving and loading, commands autocompletion, and commands history.

I've also been working on testing other depth reductions and extensions,
improving the evaluation function, and implementing lazy SMP, but more work
is needed before merging those changes.

At about 2200 ELO, Little Wing is still far from being a strong chess engine,
but I hope you'll enjoy playing a game or two in the CLI.

## 1. Changelog

### 1.1. Fixed

- Fix castling right update bug
- Fix pawn move disambiguation in SAN
- Fix white pieces color with black on white terminals in CLI
- Avoid panicking in CLI

### 1.2. Added

- Add makefile
- Parse moves in SAN format (#41)
- Add `go movetime` command to UCI (#40)
- Add `load pgn` and `save pgn` commands to CLI (#42)
- Add `play none` subcommand to CLI
- Add `init` command to CLI
- Add command history file to CLI (#38)
- Add autocompletion to CLI (#36)

### 1.3. Changed

- Increase futility pruning depth (#44)
- Avoid TT cutoff on PV-nodes
- Split PV over multiple lines in CLI mode (#45)
- Add error propagation to CLI commands (#43)
- Improve colors in CLI
- Refactor board drawing
- Update dependencies

## 2. Tournament results

Here are the results of gauntlet tournaments with 40 moves in 10+0.1 seconds:

    Rank Name                         Elo    +    - games score oppo. draws
       1 Dorpsgek Dillinger 1        2293    5    5 20000   67%  2156   12%
       2 Little Wing v0.6.0          2211    3    3 50000   64%  2080   10%
       3 RattateChess 1.0 Nosferatu  2200    4    4 20000   56%  2156   11%
       4 Napoleon                    2121    4    4 20000   46%  2156   15%
       5 Little Wing v0.5.0          2101    3    3 50000   52%  2080   12%
       6 Sjaak II 1.4.1              1955    5    5 20000   26%  2156   11%
       7 Sayuri 2018.05.23           1831    6    6 20000   15%  2156    7%

Compared to the previous release:

    Rank Name                         Elo    +    - games score oppo. draws
       1 Dorpsgek Dillinger 1        2293    4    4 32751   75%  2086   11% 
       2 RattateChess 1.0 Nosferatu  2200    4    4 32747   64%  2086   11% 
       3 Napoleon                    2118    3    3 32747   54%  2086   17% 
       4 Little Wing v0.5.0          2096    3    3 49716   52%  2078   12% 
       5 Little Wing v0.4.0          2048    4    4 27439   46%  2078   13% 
       6 Sjaak II 1.4.1              1950    4    4 32738   33%  2086   13% 
       7 Sayuri 2018.05.23           1832    4    4 32743   21%  2086    9%

## 3. Links

- https://github.com/vinc/littlewing
- https://vinc.cc/binaries/littlewing-v0.6.0
- https://docs.rs/littlewing/0.6.0/littlewing

[1]: https://github.com/vinc/littlewing
[2]: /blog/2018/07/18/little-wing-0-5-0-released
[3]: https://github.com/vinc/littlewing/pull/44
