%%  lecon3.ly
%%  Copyright (c) 2013 Benjamin Coudrin <benjamin.coudrin@gmail.com>
%%                All Rights Reserved
%%
%%  Copyleft :
%%  This program is free software. It comes without any warranty, to
%%  the extent permitted by applicable law. You can redistribute it
%%  and/or modify it under the terms of the Do What The Fuck You Want
%%  To Public License, Version 2, as published by Sam Hocevar. See
%%  http://sam.zoy.org/wtfpl/COPYING for more details.

\version "2.14.2"

#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\paper {
  line-width    = 190\mm
  left-margin   = 10\mm
  top-margin    = 10\mm
  bottom-margin = 20\mm
  ragged-last-bottom = ##t 
  ragged-bottom = ##f
  annotate-spacing = ##f
  #(define page-breaking ly:page-turn-breaking)
}

\header {
  title = \markup \center-column { "Pour le Mercredy" "Troisième Leçon à deux Voix" }
  %subtitle =
  composer =  \markup \right-column { "François Couperin" \small "(1668-1733)" }
  tagline = ""
  copyright = \markup { "Copyright : " \char ##x00A9 " 2013 Benjamin Coudrin. Copyleft : released under WTFPL License" }
}

\include "../../../3rdParty/Viole/ornements-viole.ly"
\include "jod.ly"

\score {
  \new StaffGroup <<
    \new Voice = "sopun" <<
      \set Staff.instrumentName = #""
      \set Staff.shortInstrumentName = #""
      \relative c'' {
        \key d \major
        \time 2/2
        \clef treble
        \jodsopun
        \bar "||" s1_\markup{\italic{\column{Petitte pause}}} \bar "||"
      }
    >>
    
    \new Lyrics \lyricsto sopun {
        \jodlyrun
        \bar "||" _1 "||"
    }
    
    \new Voice = "sopdeux" <<
      \set Staff.instrumentName = #""
      \set Staff.shortInstrumentName = #""
      \relative c'' {
        \key d \major
        \time 2/2
        \clef treble
        \jodsopdeux
        \bar "||" s1 \bar "||"
      }
    >>
    
    \new Lyrics \lyricsto sopdeux {
        \jodlyrdeux
        \bar "||" _1 \bar "||"
    }
    
    \new FiguredBass {
      \jodfig
      \bar "||" s1 \bar "||"
    }
     
    \new Staff <<
      \set Staff.instrumentName = #""
      \set Staff.shortInstrumentName = #""
      \relative c' {
        \clef bass
        \key d \major 
        \time 2/2
        \jodbass
        \bar "||" s1 \bar "||"
      }
    >>
 >>
}