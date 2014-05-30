%%  tirsi3.ly
%%  This file is part of the Earlilypond project
%%  
%%  Copyright (c) 2014 Benjamin Coudrin <benjamin.coudrin@gmail.com>
%%                All Rights Reserved
%%
%%  This program is free software. It comes without any warranty, to
%%  the extent permitted by applicable law. You can redistribute it
%%  and/or modify it under the terms of the Do What The Fuck You Want
%%  To Public License, Version 2, as published by Sam Hocevar. See
%%  http://sam.zoy.org/wtfpl/COPYING for more details.

AKsoprano = \relative c'' {
    \clef treble
    \key f \major
    \time 3/4
    \repeat volta 2 {
      \partial 4 d4
    }
    \repeat volta 2 {
    }
}

AKalto = \relative c' {
    \clef "G_8"
    \key f \major
    \time 3/4
    \repeat volta 2 {
      \partial 4 f4
    }
    \repeat volta 2 {
    }
}

AKtenor = \relative c' {
    \clef "G_8"
    \key f \major
    \time 3/4
    \repeat volta 2 {
      \partial 4 bes4
    }
    \repeat volta 2 {
    }
}

AKbass = \relative c' {
    \clef bass
    \key f \major
    \time 3/4
    \repeat volta 2 {
      \partial 4 bes4
    }
    \repeat volta 2 {
    }
}

AKScore = \score {
  \new StaffGroup  <<
    \new Voice = "Soprano" <<
      \override Staff.BarLine #'allow-span-bar = ##f
      \AKsoprano
    >>
    \new Voice = "Alto" <<
      \override Staff.BarLine #'allow-span-bar = ##f
      \AKalto
    >>
    \new Voice = "Tenor" <<
      \override Staff.BarLine #'allow-span-bar = ##f
      \AKtenor
    >>
    \new Voice = "Basse" <<
      \override Staff.BarLine #'allow-span-bar = ##f
      \AKbass
    >>
  >>
  \header {
    piece = "Tirsi, terza parte"
    number = "11"
    subopus = ""
  }
}
