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