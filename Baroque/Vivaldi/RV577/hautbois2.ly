%% hautbois2.ly
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
hautboissecundofirst = \relative c'' {
  \set Score.skipBars = ##t
  \time 4/4
  \key g \minor
  \clef treble
  r4 r8 g16 a bes8 g r8 g16 a
  | % 2
  bes8 g r4 r2 
  | % 3
  d16 [e fis g a bes c d] d,4 r4 
  | % 4
  g'8 d bes g r4 r8 g16 a 
  | % 5
  bes8 g r8 g16 a bes8 g r4
  r1
  r2 r8 d'8 d d 
  | % 8
  r1
  r8 ees8 ees ees r2
  r2 r8 d8 d d 
  | % 11
  r1
  | % 12
  c8 a' r8 c, bes g' r8 bes, 
  | % 13
  a fis' r8 a, bes4 r8 g'16 f 
  | % 14
  ees8 [d16 c d8 d,] c'4. g'16 f 
  | % 15
  ees8 d16 c d8 d, g4\fermata r4
  R1*11
  r2 r8 d'16 [e f8 d] 
  | % 28
  r8 d16 [e f8 d] r8 d16 [e f8 d]
  | % 29
  r8 f4 e d cis8~
  cis bes4 a8 d a f d 
  | % 31
  r8 d'16 [e f8 d] r8 d16 [e f8 d] 
  | % 32
  r8 d16 [e f8 d] cis4 r4
  r1
  r8 f8 f f r2
  r2 r8 d8 d d 
  r1
  | % 36
  r8 cis8 cis cis r2
  r2 cis2 
  | % 39
  d e 
  | % 40
  d4 r8 d16 c bes8 a16 g a8 a 
  | % 41
  g4. d'16 c bes8 a16 g a8 a 
  | % 42
  d,4 r4 r2
  R1*11
  r2 f'16 [f f f f f f f]
  | % 55
  g, [g g g g g g g] c [c c c c c c c]
  | % 56
  f, [f f f f f f f] c' [c c c c c c c]
  | % 57
  a8. f16 bes8. f16 c'8. f,16 bes8. f16 
  | % 58
  a8. f16 bes8. f16 c'8. f,16 bes8. f16 
  | % 59
  bes8. f16 a8. f16 f4 r4
  R1*9 
  r8 c'16 [d ees8 c] r8 c16 [d ees8 c]
  | % 70
  r8 c16 [d ees8 c] r8 ees4 d8~
  d c4 b aes g8 
  | % 72
  c g ees c r4 r8 g'16 a 
  | % 73
  bes8 g r8 g16 a bes8 g r4
  r2 d16 [e fis g a bes c d] 
  | % 75
  d,4 r4 g'8 d bes g 
  | % 76
  R1*15
  \partial 4 r4
}

%% Largo non molto %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
hautboissecundosecond = \relative c {
  \set Score.skipBars = ##t
  \time 3/4
  \key g \minor
  \clef treble
  \mark \markup{Tacet}
  R2.*18
}

%% Allegro %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
hautboissecundothird = \relative c''' {
  \set Score.skipBars = ##t
  \time 3/4
  \key g \minor
  \clef treble
  g4 r8 d g d
  | % 2
  g4 r8 d g d 
  | % 3
  fis4 r8 d fis d 
  | % 4
  fis4 r8 d fis a 
  | % 5
  g4 r8 d g d 
  | % 6
  fis4 r8 fis fis fis 
  | % 7
  f4 r8 f f f 
  | % 8
  e4 r8 e e e 
  | % 9
  ees4 r8 ees ees ees 
  | % 10
  d4 r8 d d d 
  | % 11
  d4 r8 d d d 
  | % 12
  cis4 r8 cis cis cis 
  | % 13
  c4 r8 c c c 
  | % 14
  bes4 r r 
  | % 15
  g'8 [f16 ees d8 c bes a]
  | % 16
  g' [f16 ees d8 c bes a]
  | % 17
  g4\fermata r r
  | % 18
  bes4 c a 
  | % 19
  bes r r
  R2.*21
  f'4 r8 d f d 
  | % 42
  cis4 r8 cis e cis 
  | % 43
  d4 r8 d f d 
  | % 44
  cis4 r8 cis cis cis 
  | % 45
  c4 r8 c c c 
  | % 46
  b4 r8 b b b 
  | % 47
  cis4 r8 cis cis cis 
  | % 48
  d4 r8 d d d 
  | % 49
  d4 r8 d d d 
  | % 50
  cis4 r8 cis cis cis 
  | % 51
  d8. f16 \grace f8 (g4.) f8 
  | % 52
  e8. e16 \grace e8 (f4.) e8 
  | % 53
  d8. d16 \grace d8 (e4.) d8 
  | % 54
  d2\trill cis4 
  | % 55
  R2.*22
  f4 r8 f f f 
  | % 78
  f4 r8 f f f 
  | % 79
  ees4 r8 ees ees ees 
  | % 80
  d4 r8 d d d 
  | % 81
  c4 r8 c c c 
  | % 82
  c4 r8 c c c 
  | % 83
  d4 r r
  R2.*11
  ees4 r8 c ees c 
  | % 96
  d4 r8 b d b 
  | % 97
  c4 r8 c ees c 
  | % 98
  b4 r8 b b b 
  | % 99
  c4 r8 c c c 
  | % 100
  c4 r8 c c c 
  | % 101
  b4 r8 b b b 
  | % 102
  c4 r r 
  R2.*10
  ees4 r8 ees ees ees 
  | % 114
  ees4 r r 
  | % 115
  d4 r8 d d d 
  | % 116
  d4 r r
  | % 117
  c4 r8 c c c 
  | % 118
  c4 r8 c c c 
  | % 119
  bes4 r8 bes bes bes 
  | % 120
  c4 r8 c c c 
  | % 121
  bes4 r8 bes bes bes 
  | % 122
  a4 r r
  | % 123
  bes4 bes bes 
  | % 124
  g g c 
  | % 125
  a a a 
  | % 126
  bes bes bes 
  | % 127
  g d' a 
  | % 128
  bes bes bes 
  | % 129
  g g c 
  | % 130
  a a a 
  | % 131
  bes bes bes 
  | % 132
  g8 c a4 a 
  | % 133
  \partial 4 bes 
}