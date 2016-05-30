%% flauto2.ly
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
flautosecundofirst = \relative c''' {
  \set Score.skipBars = ##t
  \time 4/4
  \key g \minor
  \clef treble
  r8 g16 [a bes8 g] r8 g16 [a bes8 g]
  | % 2
  r8 g16 [a bes8 g] r8 bes4 a8~
  a g4 fis ees d8 
  | % 4
  g d bes g r8 g'16 [a bes8 g] 
  | % 5
  r8 g16 [a bes8 g] r8 g16 [a bes8 g]
  | % 6
  fis4 r4 r2
  r2 r8 d8 d d 
  | % 8
  r1
  r8 ees8 ees ees r2
  r2 r8 d8 d d 
  | % 11
  r1 
  | % 12
  fis2 g 
  | % 13
  a g4 r8 g16 f 
  | % 14
  ees8 [d16 c d8 d] c4. g'16 f 
  | % 15
  ees8 [d16 c d8 d] g,4\fermata r4
  R1*2 
  r2 g'16 a bes4. 
  | % 19
  fis16 g a4. g16 a bes4. 
  | % 20
  fis16 g a4. g8 d r4
  R1*6
  r2 r4 r8 d16 e 
  | % 28
  f8 d r8 d16 e f8 d r4
  r2 a16 [b cis d e f g a]
  | % 30
  a,4 r4 d'8 a f d 
  | % 31
  r4 r8 d16 e f8 d r8 d16 e 
  | % 32
  f8 d r8 d cis4 r4
  r1
  r8 f8 f f r2
  r2 r8 d8 d d 
  | % 36
  r1
  r8 cis8 cis cis e cis' r8 e, 
  | % 38
  d a' r8 d, cis a' r8 cis, 
  | % 39
  a f' r8 a, a e' r8 a, 
  | % 40
  a4 r8 d'16 c bes8 a16 g a8 a, 
  | % 41
  g'4. d'16 c bes8 a16 g a8 a, 
  | % 42
  d4 r4 r2
  R1*11
  r2 f16 [f f f f f f f]
  | % 55
  g, [g g g g g g g] c [c c c c c c c]
  | % 56
  f, [f f f f f f f] c' [c c c c c c c]
  | % 57
  a' g a8 bes16 a bes8 c16 bes c8 bes16 a bes8 
  | % 58
  a16 g a8 bes16 a bes8 c16 bes c8 bes16 a bes8 
  | % 59
  bes16 a bes8 a16 g a8 bes4 r4
  R1*2
  r4 r8 a8 bes g4 f8 
  | % 63
  ees4. g8 a f4 ees8 
  | % 64
  d4. f8 g ees4 d8 
  | % 65
  c4. ees8 f d4 c8 
  | % 66
  b4 r8 b c16 (d ees4.)
  | % 67
  d16 (ees f4.) c16 (d ees4.) 
  | % 68
  d16 (ees f4.) c8 ees f d 
  | % 69
  c4 r8 c16 d ees8 c r8 c16 d 
  | % 70
  ees8 c r4 r2
  | % 71
  g16 [a b c d ees f g] g,4 r4 
  | % 72
  c'8 g ees c r8 g'16 [a bes8 g]
  | % 73
  r8 g16 [a bes8 g] r8 g16 [a bes8 g]
  | % 74
  r8 bes4 a8 ~ a g4 fis8~
  fis ees4 d8 g d bes g 
  | % 76
  R1*15
  \partial 4 r4
}

%% Largo non molto %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
flautosecundosecond = \relative c {
  \set Score.skipBars = ##t
  \time 3/4
  \key g \minor
  \clef treble
  \mark \markup{Tacet}
  R2.*18
}

%% Allegro %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
flautosecundothird = \relative c'' {
  \set Score.skipBars = ##t
  \time 3/4
  \key g \minor
  \clef treble
  r8 d g d g4
}