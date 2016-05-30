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
  d d a'8 [a,16 b des8 a]
  a'16 [b des d e d des b] a2 
  d8 d, d d d16 [e fis g a g fis e]
  d2 g8 g, g g 
  e'16 [fis gis a b a giss fis] e2 
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
}

%% Allegro %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fagottothird = \relative c {
  \set Score.skipBars = ##t
  \time 3/4
  \key g \minor
  \clef bass
  g16 [a bes c d e fis g] g,8 g'
}

