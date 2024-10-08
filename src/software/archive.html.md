---
title: Archive
---

# Archive

Some random stuff from my personal archives.

## 1997 / BASIC

In 2024 I went through a box of floppies from 1996-1997 and found a short
program I wrote in 1997-11-21 when I was 13 years old in BASIC:

```bbcbasic
10 CLS
20 PRINT " A, B et C sont trois critures"
30 PRINT "diffrentes d'une mme expression"
40 PRINT "algbrique."
50 PRINT : PRINT : PRINT "A = (X+2)(2X+3)+5X+10"
60 PRINT : PRINT "B = (X+2)(2X+8)"
70 PRINT : PRINT "C = (2*)+12X+16"
80 PRINT : PRINT
90 X = INT((RND) * 6)
100 IF RND > .5 THEN X = -X
110 A = (X + 2) * (2 * X + 8): CO = 0
120 PRINT "Calculer cette expression pour X = "; X
130 INPUT R
140 IF R = A THEN PRINT "BRAVO": GOTO 180
150 IF CO < 1 THEN PRINT "C'EST FAUX, ESSAYER A NOUVEAU ": INPUT R: CO = CO + 1: GOTO 140
160 IF CO < 2 THEN PRINT "C'EST FAUX, DERNIER ESSAI": INPUT R: CO = CO + 1: GOTO 140
170 PRINT : PRINT "La bonne rponse est :"; A
180 PRINT : PRINT "nouvel exercice (O/N)?"
190 A$ = INKEY$: IF A$ = "" THEN 190
200 IF A$ = "O" THEN 10
210 IF A$ <> "N" THEN END
```

## 1998 / Digital Camera

In another box of floppies I found the first digital picture of me dating from
1998-04-29 when I was 14 years old:

![S025I005.JPG](1998-04-29-s025i005.jpg)

## 1998 / Usenet

I posted my first message online on 1998-08-06 at 09:00:00 on the
`rec.arts.bonsai` newsgroup to announce my new website about my bonsai
collection. There's some traces of it on the Wayback Machine by the Internet
Archive but it most images are missing.
