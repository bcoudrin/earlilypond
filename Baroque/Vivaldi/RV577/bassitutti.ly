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
}