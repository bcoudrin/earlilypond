%% fagotto.ly
%%  This file is part of the Earlilypond project
%%  
%%  Copyright (c) 2013-2015 Benjamin Coudrin <benjamin.coudrin@gmail.com>
%%                All Rights Reserved
%%
%%  This program is free software. It comes without any warranty, to
%%  the extent permitted by applicable law. You can redistribute it
%%  and/or modify it under the terms of the Do What The Fuck You Want
%%  To Public License, Version 2, as published by Sam Hocevar. See
%%  http://sam.zoy.org/wtfpl/COPYING for more details.

%% Allegro %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fagottofirst = \relative c {
  \set Score.skipBars = ##t
  \time 4/4
  \key g \minor
  \clef bass
  g4 g g g
  g g d' d
  d d d d
  g8 d bes g g4 g
  g g g g
  d' r d16^\markup\italic{Solo} [e fis g a g fis e]
  d2 g8 g, g g
  g'16 [a b c d c b a] g2
  c8 c, c c a'16 [b cis d e d cis b]
  a2 d8 d, d d
  d^\markup\italic{Tutti} d d d d d d d
  d d d d d d d d
  d d d d g,4 r8 g'16 [f]
  ees8 [d16 c d8 d,] c'4. g'16 f
  e8 [d16 c d8 d,] g4\fermata r
  d'8^\markup\italic{Solo} fis a d a4 fis
  g g, r8 g' c cis
  d, fis a d g,^\markup\italic{Tutti} [g16 a bes a bes g]
  fis8 [d16 e fis e fis d] g8 [g16 a bes a bes g]
  fis8 [d16 e fis e fis d] g4 r
  R1*6
  r2 d4 d 
  d d d d 
  a' a a a 
  a a d8 a f d 
  d4 d d d 
  d d a'8 [a,16 b cis8 a]
  a'16 [b cis d e d cis b] a2 
  d8 d, d d d16 [e fis g a g fis e]
  d2 g8 g, g g 
  e'16 [fis gis a b a gis fis] e2 
  a8 a, a a a a a a 
  a a a a a a a a 
  a a a a a a a a 
  d,4 r8 d''16 c bes8 a16 g a8 a, 
  g'4. d'16 c bes8 a16 g a8 a, 
  d^\markup\italic{Tutti li Fagotti} e f d r2 
  d8 e f d r2 
  g,8 a bes g r2 
  g8 a bes g r2 
  c8 d e c r2 
  c8 d e c r2 
  f8 g a f r2 
  f8 g a f r2 
  bes,8 c d bes r2 
  bes8 c d bes r2 
  f'8 f f f f f f f 
  f f f f f f f f 
  f4 r4 d8 d d d 
  ees ees ees ees f f f f 
  d d d d ees ees ees ees 
  f f, f f f f f f 
  f f f f f f f f 
  f f f f bes'^\markup\italic{Fagotto solo} bes bes bes 
  a a a a g g g g 
  f f f f bes, bes bes bes 
  f'16 g a bes c a g f bes4 c8 d 
  ees16 [d c bes a g f ees] a4 bes8 c 
  d16 [c bes a g f ees d] g4 a8 bes 
  c16 [bes aes g f ees d c] f4 f8 fis 
  g16 [f ees d c b a g] c' [bes aes g f ees d c] 
  g' [f ees d c b a g] c' [bes aes g f ees d c]
  g'16 [f ees d c b a \footnote "*" #'(0 . -0.5) \markup {* original : \raise #1 \score {
    { \footnoteSize \key g \minor \clef "bass" \time 4/4
      \omit TupletNumber \times 8/7 {g16 [f ees d c b, a,]} c8 [c' f g]
    }
    \layout { \footnoteLayout }
  }} g16] c8 c' f, g 
  c,4 c c c 
  c c g' g 
  g g g g 
  c8 g ees c g4 g 
  g g g g 
  d' d d d 
  d d g8 d bes g 
  R1*8
  r2 d'8^\markup\italic{Fagotto Solo}_\markup\italic{dolce} (d' bes g)
  fis (g a bes) d, (e fis g)
  fis (g a bes) d, (e fis g) 
  fis (g a bes) c (bes a g) 
  fis (a g fis) g (c bes a) 
  bes (g fis g) d'4 d, 
  g fis g8 [bes,16 c d8 d,] 
  \partial 4 g4 
}

%% Largo non molto %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fagottosecond = \relative c {
  \set Score.skipBars = ##t
  \time 3/4
  \key g \minor
  \clef bass
  c4 ees f
  g2. 
  g,4 a b 
  c2. 
  g'4 aes bes 
  aes2. ~
  aes
  g 
  c,4 d ees 
  f2. 
  bes,4 c d 
  ees2. 
  ees4 c8. [d16 ees8. f16] 
  g2. 
  g,4 a b 
  c4. d8 ees4 
  f g g, 
  c2.\fermata
}

%% Allegro %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fagottothird = \relative c {
  \set Score.skipBars = ##t
  \time 3/4
  \key g \minor
  \clef bass
  g16 [a bes c d e fis g] g,8 g'
  | % 2
  g,16 [a bes c d e fis g] g,8 g' 
  | % 3
  d,16 [e fis g a bes c d] d,8 d' 
  | % 4
  d,16 [e fis g a bes c d] d,8 d' 
  | % 5
  g,16 [a bes c d e fis g] g,8 g' 
  | % 6
  d16 [e fis g a bes c d] d, fis e d 
  | % 7
  g, [a b c d e f g] g, b a g 
  | % 8
  c [d e f g a bes c] c, e d c 
  | % 9
  f, [g a bes c d ees f] f, a g f 
  | % 10
  bes [c d ees f g a bes] bes, d c bes 
  | % 11
  bes [c d ees f g a bes] bes, d c bes 
  | % 12
  a [b cis d e f g a] a, cis b a 
  | % 13
  d [e fis g a bes c d] d, fis e d 
  | % 14
  g4 r4 r4 
  | % 15
  g,4 r4 r4
  | % 16
  g'8 [f16 ees d8 c bes a] 
  | % 17
  g4\fermata r4 r4
  | % 18
  g'4 c, d 
  | % 19
  g, r4 r4
  | % 20
  d'4 r4 r4
  | % 21
  g,4 r4 r4
  | % 22
  c4 r4 r4
  | % 23
  g'4 r4 r4
  | % 24
  d4 r4 r4
  | % 25
  g4 r4 r4
  | % 26
  d4 r4 r4
  | % 27
  g,8 [g'16 fis g8 g, g g']
  | % 28
  g, [g' g f f ees16 d]
  | % 29
  ees8 [c ees c ees c]
  | % 30
  f, [f' f ees ees d16 c]
  | % 31
  d8 [bes d bes d bes]
  | % 32
  ees, [ees' ees d d c16 bes]
  | % 33
  c8 [a c a c a]
  | % 34
  d, [d' d c c bes16. a32]
  | % 35
  bes8 [g bes g bes g]
  | % 36
  a [a' a g g f16 e]
  | % 37
  f4 r4 r4 
  | % 38
  a,8 [a' a g g f16 e]
  | % 39
  f4 r4 f 
  | % 40
  g a a, 
  | % 41
  d16 [e f g a b cis d] d,8 d' 
  | % 42
  a,16 [b cis d e f g a] a,8 a' 
  | % 43
  d,16 [e f g a b cis d] d,8 d' 
  | % 44
  a,16 [b cis d e f g a] a, cis b a 
  | % 45
  d [e fis g a bes c d] d, fis e d 
  | % 46
  e [fis aes a b c d e] e, aes fis e 
  | % 47
  a, [b cis d e f g a] a,8 a' 
  | % 48
  d,16 [e f g a b cis d] d, f e d 
  | % 49
  g, [a bes c d e f g] g, bes a g 
  | % 50
  a [b cis d e f g a] a, cis b a 
  | % 51
  d4 g8^\markup\italic{Fagotto Solo} f g d 
  | % 52
  g,4 d''8 cis d a 
  | % 53
  d,4 g8 f g aes 
  | % 54
  a [aes a a, b cis]
  | % 55
  d4 g8 f g d 
  | % 56
  g,4 d''8 cis d a 
  | % 57
  d,4 g8 f g aes 
  | % 58
  a gis a a, b cis 
  | % 59
  d4 a' fis 
  | % 60
  g g, r4 
  | % 61
  d'' b gis 
  | % 62
  a a, r4 
  | % 63
  cis' a f 
  | % 64
  d bes g 
  | % 65
  c c c 
  | % 66
  f r4 r4
  | % 67
  d4 r4 r4
  | % 68
  g4 r4 r4
  | % 69
  ees4 r4 r4
  | % 70
  a4 r4 r4
  | % 71
  f4 r4 r4
  | % 72
  bes4 r4 r4
  | % 73
  g4 r4 r4
  | % 74
  f4 f f
  | % 75
  f f f 
  | % 76
  f8 [ees d bes] f' f, 
  | % 77
  bes16 [c d ees f g a bes] bes, d c bes 
  | % 78
  bes [c d ees f g a bes] bes, d c bes 
  | % 79
  f [g a bes c d ees f] f, a g f 
  | % 80
  bes [c d ees f g a bes] bes, d c bes 
  | % 81
  ees, [f g a bes c d ees] ees, g f ees 
  | % 82
  f [g a bes c d ees f] f, a g f 
  | % 83
  bes4 r16 bes' a bes ees,8 ees, 
  | % 84
  bes'4 r16 bes' a bes ees,8 ees, 
  | % 85
  bes'4 r16 bes' a bes bes,8 bes' 
  | % 86
  ees,4 r16 ees d ees ees,8 ees' 
  | % 87
  c4 r16 c' bes c c,8 c' 
  | % 88
  f,4 r16 f ees f f,8 f' 
  | % 89
  bes,4 r16 bes' a bes bes,8 bes' 
  | % 90
  ees,4 r16 ees d ees ees,8 ees' 
  | % 91
  aes,4 r16 aes' g aes aes,8 aes' 
  | % 92
  aes,4 r16 aes' g aes aes,8 aes' 
  | % 93
  g, [a b g c c'] 
  | % 94
  f,4 g g, 
  | % 95
  c16 [d ees f g a b c] c,8 c' 
  | % 96
  g,16 [a b c d ees f g] g,8 g' 
  | % 97
  c,16 [d ees f g a b c] c,8 c' 
  | % 98
  g,16 [a b c d ees f g] g, b a g 
  | % 99
  c [d ees f g a b c] c, ees d c 
  | % 100
  f, [g aes bes c d ees f] f, aes g f 
  | % 101
  g [a b c d ees f g] g, b a g 
  | % 102
  c' d c bes a bes a g fis g fis e 
  | % 103
  d e fis e d ees d c bes c bes a 
  | % 104
  g4 r4 r4 
  | % 105
  d'4 r4 r4
  | % 106
  g,4 r4 r4
  | % 107
  c4 r4 r4
  | % 108
  g'4 r4 r4
  | % 109
  d4 r4 r4
  | % 110
  g4 r4 r4
  | % 111
  d4 r4 r4
  | % 112
  g16 a bes a g a g f ees f ees d 
  | % 113
  c4 c c 
  | % 114
  f16 g a g f g f ees d ees d c 
  | % 115
  bes4 bes bes 
  | % 116
  ees16 f g f ees f g f ees f g ees 
  | % 117
  c4 c c 
  | % 118
  d r8 d d d 
  | % 119
  g4 r8 g g g 
  | % 120
  d4 r8 d d d 
  | % 121
  g4 r8 g g g 
  | % 122
  d16 e fis e d ees d c bes c bes a 
  | % 123
  g4 r r
  R2.*9
  \partial 4 r4
}

