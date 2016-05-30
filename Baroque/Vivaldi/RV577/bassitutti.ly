%% bassitutti.ly
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
bassituttifirst = \relative c {
  \set Score.skipBars = ##t
  \time 4/4
  \key g \minor
  \clef bass
  g4 g g g
  g g d' d
  d d d d
  g8 d bes g g4 g
  g g g g
  d' r r2
  r2 r8 g, g g
  r1
  r8 c c c r2
  r r8 d d d
  d d d d d d d d
  d d d d d d d d
  d d d d g,4 r8 g'16 f
  ees8 [ d16 c d8 d,] c'4. g'16 f
  ees8 [ d16 c d8 d,] g4\fermata r
  R1*11
  r2 d'4 d 
  d d d d 
  a' a a a 
  a a d8 a f d 
  d4 d d d 
  d d a'8 a,16 b des8 a 
  r1
  r8 d8 d d r2
  r2 r8 g,8 g g 
  r1
  r8 a8 a a a a a a 
  a a a a a a a a 
  a a a a a a a a 
  d,4 r8 d''16 c bes8 a16 g a8 a, 
  g'4. d'16 c bes8 a16 g a8 a, 
  d4 r4 d8_\markup\italic{Bassi dà arco} e f d 
  r2 d8 e f d 
  r2 g,8 a bes g 
  r2 g8 a bes g 
  r2 c8 d e c 
  r2 c8 d e c 
  r2 f8 g a f 
  r2 f8 g a f 
  r2 bes,8 c d bes 
  r2 bes8 c d bes 
  f' f f f f f f f 
  f f f f f f f f 
  f4 r4 d8 d d d 
  ees ees ees ees f f f f 
  d d d d ees ees ees ees 
  f f, f f f f f f 
  f f f f f f f f 
  f f f f bes4 r4
  R1*2
  f'16 g a bes c a g f bes4 r4
  R1*6
  c,4 c c c 
  c c g' g 
  g g g g 
  c8 g ees c g4 g 
  g g g g 
  d' d d d 
  d d g8 d bes g 
  R1*5
  r2 d'4 d 
  d d d d 
  d d d d 
  d d d r4
  R1*6
  \partial 4 r4
}

bassituttisecond = \relative c {
  \set Score.skipBars = ##t
  \time 3/4
  \key g \minor
  \clef treble
  \mark \markup{Tacet}
  R2.*18
}

%% Allegro %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
bassituttithird = \relative c {
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
  d4 r4 r4
  | % 52
  R2.*7
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
  bes4 r r
  | % 84
  R2.*11
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