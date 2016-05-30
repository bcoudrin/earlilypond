%% viole.ly
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
violafirst = \relative c' {
  \set Score.skipBars = ##t
  \time 4/4
  \key g \minor
  \clef alto
  d8 d4 d8 d d4 d8
  d8 d d d fis d d d
  d d d d d d d d
  g d bes g d' d4 d8
  d d4 d8 d d d d
  d'4 r r2
  r2 r8 bes bes bes
  r1
  r8 c c c r2
  r2 r8 a a a
  a a a a g g g g
  fis fis fis fis d d d d
  d d d d d4 r8 g,16 f
  ees8 [d16 c d8 d] c4. g'16[ f]
  ees8 [d16 c d8 d] g4\fermata r4
  R1*11
  r2 a'8 a4 a8
  a a4 a8 a a a a
  cis, a a a a a a a
  a a a a d' a f d
  a' a4 a8 a a4 a8
  a a a a a4 r
  r1
  r8 a a a r2
  r r8 bes bes bes
  r1
  r8 a a a e e e e
  d d d d cis cis cis cis
  a a a a a a a a
  a4 r8 d16 c bes8 a16 g a8 a
  g4. d'16 c bes8 a16 g a8 a
  d,4 r r2
  R1*11
  r2 bes''16 [bes bes bes bes bes bes bes]
  bes [bes bes bes bes bes bes bes] a [a a a a a a a]
  a [a a a a a a a] g [g g g g g g g]
  f f f f f f f f f [f f f f f f f]
  f [f f f f f f f] f [f f f f f f f]
  f [f f f f f f f] d4 r
  R1*9
  g,8 g4 g8 g g4 g8
  g g g g b g g g
  g g g g g g g g
  c' g ees c d d4 d8
  d d4 d8 d d4 d8
  fis d d d d d d d
  d d d d g d bes g
  R1*2
  r2 g8 g g g
  c, c c c f f f f
  bes bes bes bes ees ees ees ees
  a, a a a d4 r
  R1*9
  \partial 4 r4
}

%% Largo non molto %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
violasecond = \relative c {
  \set Score.skipBars = ##t
  \time 3/4
  \key g \minor
  \clef alto 
  \mark \markup{Tacet}
  R2.*18
}

%% Allegro %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
violathird = \relative c {
  \set Score.skipBars = ##t
  \time 3/4
  \key g \minor
  \clef alto
  r8 g'16 [g] g8 [g16 g] g4
  r8 g16 [g] g8 [g16 g] g4
  r8 d'16 [d] d8 [d16 d] d4
  r8 d16 [d] d8 [d16 d] d4
  r8 g,16 [g] g8 [g16 g] g4
  d''2. ~
  d2 g,4
  g2 c4
  c2 f,4
  f2.
  g
  e2 a4
  a2 fis4
  d r r
  bes r r
  g'8 [f16 ees! d8 c bes a]
  g4\fermata r r
  d' ees d
  d r r
  R2.*21
  r8 d16 [d] d8 [d16 d] d4
  r8 a16 [a] a8 [a16 a] a4
  r8 d16 [d] d8 [d16 d] d4
  a'2. ~
  a2 d,4
  gis2.
  e2 a4
  a2.
  bes
  a
  a4 r r
  R2.*25
  bes2. ~
  bes
  c2 f,4
  f2.
  g
  (f)
  f4 r r
  R2.*11
  r8 g,16 [g] g8 [g16 g] g4
  r8 g16 [g] g8 [g16 g] g4
  r8 g16 [g] g8 [g16 g] g8 [ees']
  d2 g4
  g2.
  aes
  (g)
  g4 r r
  R2.*10
  g4 r8 g g ees
  c4 r r
  f r8 f f d
  bes4 r r
  ees4 r8 ees ees c
  a4 r8 fis' fis fis
  d4 r8 d d d
  fis4 r8 fis fis fis
  d4 r8 d d d
  d4 r r
  g, g g
  c c c
  d d d
  g, g g
  c d d,
  g g g
  c c c
  d d d
  g, g g
  c d d,
  \partial 4 g
}
