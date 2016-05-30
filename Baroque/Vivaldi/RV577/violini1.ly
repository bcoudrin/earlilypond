%% violini1.ly
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
violinoprimofirst = \relative c''' {
  \set Score.skipBars = ##t
  \time 4/4
  \key g \minor
  \clef treble
  g8 d4 d8 g d4 d8
  g d bes' g a d,4 c8~
  c8 bes4 a g fis8 
  g d bes g g'' d4 d8 
  g d4 d8 g d bes' g 
  a4 r4 r2
  r2 r8 g g g 
  r1
  r8 g g g r2
  r2 r8 fis8 fis fis 
  c16 d, c' d, c' d, c' d, bes' [d, bes' d, bes' d, bes' d,] 
  a' [d, a' d, a' d, a' d,] g [d g d g d g d]
  fis [d fis d fis d fis d] g4 r8 g'16 f 
  ees8 [d16 c d8 d,] c'4. g'16 f 
  ees8 [d16 c d8 d,] g4\fermata r4
  R1*4
  r2 g8 g g g 
  c, c c c f f f f 
  bes, bes bes' bes e, e e e 
  a, a a a d d fis fis 
  g g g gis a a g g 
  f (g f e) f (e d cis)
  d (g f e) f (a f d) 
  a'4 a, d'8 a4 a8 
  d a4 a8 d a f' d 
  e a4 g f e8~
  e8 d4 cis8 d a f d 
  d' a4 a8 d a4 a8 
  d a f' d e4 r4
  r1 
  r8 a a a r2
  r2 r8 g g g 
  r1
  r8 e8 e e g16 [a, g' a, g' a, g' a,]
  f' [a, f' a, f' a, f' a,] e' [a, e' a, e' a, e' a,] 
  d [a d a d a d a] des [a des a des a des a]
  d4 r8 d,16 c bes8 a16 g a8 a 
  g4. d'16 c bes8 a16 g a8 a 
  d4 r4 d'16^\markup\italic{Solo} d' a f d d' a f 
  d8 f a d d,16 d' a f d d' a f 
  d8 bes d g g,16 g' d bes g g' d bes 
  g8 bes d g g,16 g' d bes g g' d bes 
  g8 e' g c c,16 c' g e c c' g e 
  c8 e g c c,16 c' g e c c' g e 
  c8 a c f f,16 f' c a f f' c a 
  f8 a c f f,16 f' c a f f' c a 
  bes8 d f bes bes,16 bes' f d bes bes' f d 
  bes8 d f bes bes,16 bes' f d bes bes' f d 
  c4 r4 a16 f a f bes f bes f 
  c' f, c' f, d' f, d' f, ees' f, ees' f, d' f, d' f, 
  c'4 r4 bes'16 [bes bes bes bes bes bes bes]
  c, [c c c c c c c] a' [a a a a a a a]
  bes, [bes bes bes bes bes bes bes] g' [g g g g g g g]
  c, c c c d d d d ees ees ees ees d d d d 
  c c c c d d d d ees ees ees ees d d d d 
  c c c c c c c c bes4 r4
  R1*9
  c8 g4 g8 c g4 g8 
  c g ees' c d g4 f8 ~
  f ees4 d c b8 
  c g ees c g'' d4 d8 
  g d4 d8 g d bes' g 
  a d,4 c8 ~c bes4 a8 ~
  a g4 fis8 g d bes g 
  g' a bes fis g a bes fis 
  g a bes g fis e fis d 
  g g, g4 bes''8 bes bes bes 
  g g g g a a a a 
  f f f f g g g g 
  ees ees ees ees fis,4 r4
  R1*9
  \partial 4 r4
}

%% Largo non molto %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
violiniprimosecond = \relative c {
  \set Score.skipBars = ##t
  \time 3/4
  \key g \minor
  \clef treble
  \mark \markup{Tacet}
  R2.*18
}

%% Allegro %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
violinoprimothird = \relative c''' {
  \set Score.skipBars = ##t
  \time 3/4
  \key g \minor
  \clef treble
  \override Beam.auto-knee-gap = #4
  bes8 [g,,16 g g8 g'' bes g]
}