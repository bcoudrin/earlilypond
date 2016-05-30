%% violino2.ly
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
violinosecundofirst = \relative c'' {
  \set Score.skipBars = ##t
  \time 4/4
  \key g \minor
  \clef treble
  d8 bes4 bes8 d bes4 bes8
  d bes g' d d bes4 a8 ~
  a g4 fis ees d8 
  g d bes g d'' bes4 bes8 
  d bes4 bes8 d bes g' d 
  fis4 r4 r2
  r2 r8 d8 d d 
  r1
  r8 ees8 ees ees r2
  r2 r8 d8 d d 
  c16 d, c' d, c' d, c' d, [bes' d, bes' d, bes' d, bes' d,]
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
  a'4 a, a'8 f4 f8 
  a f4 f8 a f d' a 
  a f'4 e d cis8 ~
  cis bes4 a8 d a f d 
  a' f4 f8 a f4 f8 
  a f d' a cis4 r4
  r1
  r8 f f f r2
  r2 r8 d d d 
  r1
  r8 cis8 cis cis g'16 [a, g' a, g' a, g' a,]
  f' [a, f' a, f' a, f' a,] e' [a, e' a, e' a, e' a,]
  d [a d a d a d a] des [a des a des a des a]
  d4 r8 d,16 c bes8 a16 g a8 a 
  g4. d'16 c bes8 a16 g a8 a 
  d4 r4 r2
  R1*11
  r2 f'16 [f f f f f f f]
  g, [g g g g g g g] c [c c c c c c c]
  f, [f f f f f f f] c' [c c c c c c c]
  a a a a bes bes bes bes c c c c bes bes bes bes 
  a a a a bes bes bes bes c c c c bes bes bes bes 
  bes bes bes bes a a a a bes4 r4
  R1*9
  g8 ees4 ees8 g ees4 ees8 
  g ees c' g g ees'4 d8~
  d c4 b aes g8 
  c g ees c d' bes4 bes8 
  d bes4 bes8 d bes g' d 
  d bes4 a8 ~a g4 fis8~
  fis ees4 d8 g d bes g 
  g' a bes fis g a bes fis 
  g a bes g fis e fis d 
  g g, g4 d''8 d d d 
  ees ees ees ees c c c c 
  d d d d bes bes bes bes 
  c c c c a4 r4
  R1*9
  \partial 4 r4
}

%% Largo non molto %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
violinisecundosecond = \relative c {
  \set Score.skipBars = ##t
  \time 3/4
  \key g \minor
  \clef treble
  \mark \markup{Tacet}
  R2.*18
}

%% Allegro %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
violinosecundothird = \relative c''' {
  \set Score.skipBars = ##t
  \time 3/4
  \key g \minor
  \clef treble
  \override Beam.auto-knee-gap = #3
  g8 [g,,16 g g8 d'' g d]
}