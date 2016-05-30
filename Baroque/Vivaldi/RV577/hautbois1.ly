%% hautbois1.ly
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
hautboisprimofirst = \relative c'' {
  \set Score.skipBars = ##t
  \time 4/4
  \key g \minor
  \clef treble
  r4 r8 bes16 c d8 bes r8 bes16 c
  | % 2
  d8 bes r4 d,16 [e fis g a bes c d]
  | % 3
  d,4 r4 d16 [e fis g a bes c d]
  | % 4
  g,8 d' bes g r4 r8 bes16 c 
  | % 5
  d8 bes r8 bes16 c d8 bes r4
  r2 c2^\markup\italic{Solo} ~
  c8 [bes16 c d c bes a] bes8 g^\markup\italic{Tutti} g g 
  | % 8
  f'2^\markup\italic{Solo} ~ f8 [ees16 f g f ees d] 
  | % 9
  ees8 c c c g'2 ~ g8 [fis16 g a g fis e] fis8 d d d 
  | % 11
  c a' r8 c, bes g' r8 bes, 
  | % 12
  a fis' r8 a, g d' r8 g, 
  | % 13
  fis d' r8 fis, g4 r8 g'16 f 
  | % 14
  ees8 [d16 c d8 d,] c'4. g'16 f 
  | % 15
  ees8 d16 c d8 d, g^\markup{\musicglyph #"scripts.ufermata" \italic "Solo"} bes d g
  | % 16
  \grace g8 (fis4.) a8 c, [ees d16 c bes a]
  | % 17
  bes8 g bes d g [a16 bes a8 g] 
  | % 18
  g4\trill fis r2
  R1*8
  r2 r8 f16 [g a8 f]
  | % 28
  r8 f16 [g a8 f] r8 f16 [g a8 f]
  | % 29
  r8 a4 g f e8~
  e d4 cis8 d a f d 
  | % 31
  r8 f'16 [g a8 f] r8 f16 [g a8 f] 
  | % 32
  r8 f16 [g a8 f] e4 r4 
  | % 33
  g2^\markup\italic{Solo} ~ g8 [f16 g a g f e] 
  | % 34
  f8 d d d c2 ~ c8 [bes16 c d c bes a] bes8 g g g 
  | % 36
  d'2 ~ d8 [cis16 d e d cis b]
  | % 37
  cis8 a a a des2 
  | % 38
  d e 
  | % 39
  f g 
  | % 40
  f4 r8 d16 c bes8 a16 g a8 a 
  | % 41
  g4. d'16 c bes8 a16 g a8 a 
  | % 42
  d,4 r4 a''2 ~
  a ~ a8 f (g a)
  | % 44
  bes4 r4 d,2 ~
  d ~ d8 bes (c d)
  | % 46
  e4 r4 g2 ~
  g ~ g8 e (f g) 
  | % 48
  a4 r4 c,2 ~
  c ~ c8 a (bes c)
  | % 50
  d4 r4 f2 ~
  f ~ f8 d ees f 
  | % 52
  a,4 r4 r2
  r1
  r2 bes'16 [bes bes bes bes bes bes bes]
  | % 55
  c, [c c c c c c c] a' [a a a a a a a] 
  | % 56
  bes, [bes bes bes bes bes bes bes] g' [g g g g g g g] 
  | % 57
  c,8. f16 d8. f16 ees8. f16 d8. f16 
  | % 58
  c8. f16 d8. f16 ees8. f16 d8. f16 
  | % 59
  c8. f16 c8. f16 d4 r4
  R1*9
  r8 ees16 [f g8 ees] r8 ees16 [f g8 ees]
  | % 70
  r8 ees16 f g8 ees r8 g4 f8 ~
  f ees4 d c b8 
  | % 72
  c g ees c r4 r8 bes'16 c 
  | % 73
  d8 bes r8 bes16 c d8 bes r4 
  | % 74
  d,16 [e fis g a bes c d] d,4 r4 
  | % 75
  d16 [e fis g a bes c d] g,8 d' bes g 
  | % 76
  R1*15
  \partial 4 r4
}

%% Largo non molto %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
hautboisprimosecond = \relative c {
  \set Score.skipBars = ##t
  \time 3/4
  \key g \minor
  \clef treble
  \mark \markup{Tacet}
  R2.*18
}

%% Allegro %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
hautboisprimothird = \relative c''' {
  \set Score.skipBars = ##t
  \time 3/4
  \key g \minor
  \clef treble
  bes4 r8 g bes g
}