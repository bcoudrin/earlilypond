%% flauto1.ly
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
flautoprimofirst = \relative c''' {
  \set Score.skipBars = ##t
  \time 4/4
  \key g \minor
  \clef treble
  r8 bes16 [c d8 bes] r8 bes16 [c d8 bes]
  | % 2
  r8 bes16 [c d8 bes] r8 d4 c8~
  c bes4 a g fis8 
  | % 4
  g d bes g r8 bes'16 [c d8 bes] 
  | % 5
  r8 bes16 [c d8 bes] r8 bes16 [c d8 bes] 
  | % 6
  a4 r4 r2
  r2 r8 bes8 bes bes 
  | % 8
  r1
  r8 g8 g g r2
  r2 r8 fis8 fis fis 
  | % 11
  fis2 g 
  | % 12
  a bes 
  | % 13
  c bes4 r8 g16 f 
  | % 14
  ees8 [d16 c d8 d] c4. g'16 f 
  | % 15
  ees8 [d16 c d8 d] g,4\fermata r4
  R1*2
  r2 bes'16 c d4. 
  | % 19
  a16 bes c4. bes16 c d4. 
  | % 20
  a16 bes c4. bes8 g r4
  R1*6
  r2 r4 r8 f16 g 
  | % 28
  a8 f r8 f16 g a8 f r4 
  | % 29
  a,16 [b cis d e f g a] a,4 r4 
  | % 30
  a16 [bes cis d e f g a] d8 a f d 
  | % 31
  r4 r8 f16 g a8 f r8 f16 g 
  | % 32
  a8 f r8 f e4 r4
  r1
  r8 a8 a a r2
  r2 r8 g8 g g 
  | % 36
  r1
  r8 e8 e e g e' r8 g, 
  | % 38
  f d' r8 f, e cis' r8 e, 
  | % 39
  d a' r8 d, cis a' r8 des, 
  | % 40
  d4 r8 d'16 c bes8 a16 g a8 a, 
  | % 41
  g'4. d'16 c bes8 a16 g a8 a, 
  | % 42
  d4 r4 r2
  R1*11 
  r2 bes'16 [bes bes bes bes bes bes bes]
  | % 55
  c, [c c c c c c c] a' [a a a a a a a]
  | % 56
  bes, [bes bes bes bes bes bes bes] g' [g g g g g g g]
  | % 57
  c bes c8 d16 c d8 ees16 d ees8 d16 c d8 
  | % 58
  c16 bes c8 d16 c d8 ees16 d ees8 d16 c d8 
  | % 59
  c16 bes c8 c16 bes c8^\markup\italic{Solo} bes16 d bes f d f bes d 
  | % 60
  c a f c a c f a bes g d bes g bes d g 
  | % 61
  a f c a f a c ees d bes f' d bes' f d' bes 
  | % 62
  bes8\trill a r8 c d bes4 a8 
  | % 63
  g4. bes8 c a4 g8 
  | % 64
  f4. a8 bes g4 f8 
  | % 65
  ees4. g8 aes f4 ees8 
  | % 66
  d4 r8 d ees16 (f g4.)
  | % 67
  b,16 (c d4.) ees16 (f g4.) 
  | % 68
  b,16 (c d4.) ees8 c' d b 
  | % 69
  c4 r8 ees,16 f g8 ees r8 ees16 f 
  | % 70
  g8 ees r4 g,16 [a b c d ees f g]
  | % 71
  g,4 r4 g16 [a b c d ees f g]
  | % 72
  c8 g ees c r8 bes'16 [c d8 bes]
  | % 73
  r8 bes16 [c d8 bes] r8 bes16 [c d8 bes]
  | % 74
  r8 d8~d c4 bes8 ~
  bes a4 g fis8 g d bes g 
  | % 76
  R1*15
  \partial 4 r4
}

%% Largo non molto %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
slautoprimosecond = \relative c {
  \set Score.skipBars = ##t
  \time 3/4
  \key g \minor
  \clef treble
  \mark \markup{Tacet}
  R2.*18
}

%% Allegro %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
flautoprimothird = \relative c''' {
  \set Score.skipBars = ##t
  \time 3/4
  \key g \minor
  \clef treble
  r8 g bes g bes4
}