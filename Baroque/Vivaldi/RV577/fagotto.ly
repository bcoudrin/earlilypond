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
}

%% Largo non molto %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fagottosecond = \relative c {
  \set Score.skipBars = ##t
  \time 3/4
  \key g \minor
  \clef bass
  c4 ees f
}

%% Allegro %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fagottothird = \relative c {
  \set Score.skipBars = ##t
  \time 3/4
  \key g \minor
  \clef bass
  g16 [a bes c d e fis g] g,8 g'
}

