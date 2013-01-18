%%  rv40.ly
%%  Copyright (c) 2012 Benjamin Coudrin <benjamin.coudrin@gmail.com>
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

\book {
  \header {
    title = \markup \center-column { "Pour le Mercredy" "Troisième Leçon à deux Voix" }
    %subtitle =
    composer =  \markup \right-column { "François Couperin" \small "(1668-1733)" }
    tagline = ""
    copyright = \markup { "Copyright : " \char ##x00A9 " 2013 Benjamin Coudrin. Copyleft : released under WTFPL License" }
  }

  
  \score {
    \new StaffGroup <<
      \new Staff <<
        \set Staff.instrumentName = #"Violoncello"
        \set Staff.shortInstrumentName = #""
        \relative c {
          \tempo "Largo"
          \key e \minor
          \time 4/4 
          \clef bass
          \partial 8
          \repeat volta 2 {
            e8                                 | 
            e' e e e e\trill dis r b           | % 1
            fis' fis fis fis fis\trill e g b,  | % 2
            b ais r e' d cis16 b ais8 b16 cis  | % 3
            e,4. e'8 ( dis eis fis) b,8        | % 4
            cis4.\trill b8 b4.                         % 5
          }
          \repeat volta 2 {
            fis8                                       |
            b8 b b b b\trill ais r8 fis                | % 6
            cis' cis cis cis cis\trill b fis' (b,)     | % 7
            b8 a e' (a,) a gis16 (a b c d8)            | % 8
            d8 c f f f e~ e16 f d c                    | % 9
            b16 a32 g c16 f d8. c16 c4 r8 e            | % 10
            dis dis dis e16 fis g8 e c4~               | % 11
            c16 a' fis dis b4~ b16 g' e cis a4~        | % 12
            a16 fis' dis b g'4. fis16 e dis8.\trill e16  | % 13
            e2~ e16 e fis g fis8 e                     | % 14
            dis16 cis b8 r a g b16 e fis,8. e16        | % 15
            e16 e' fis cis dis8. e16 e2\fermata          % 16
          }
        }
      >>
      
      \new Staff <<
        \set Staff.instrumentName = #"Basso"
        \set Staff.shortInstrumentName = #""
        \relative c {
          \clef bass
          \key e \minor 
          \time 4/4
          \partial 8
          \repeat volta 2 {
            r8                              |
            r4 r8 b8 b' b b b               | % 1
            b8\trill a r8 a g g g g         | % 2
            fis4 r8 fis b,16 cis d e fis4~  | % 3
            fis8 ais, cis fis b4 ais8 b     | % 4
            fis4 fis, b4.                     % 5
          }
          \repeat volta 2 {
            r8                         |
            r8 r4 b8 fis' fis fis fis  | % 6
            fis8\trill e r8 e d4. d8   | % 7
            c4. d8 e4. e8              | % 8
            a4. a8 g4 f                | % 9
            g8 e16 f g8 g, c c c c     | % 10
            c4 b8 a g4 r8 e'           | % 11
            dis4. d8 cis4. c8          | % 12
            b4 e ais, b                | % 13
            e8 d cis b ais4. ais8      | % 14
            b cis dis b e,4 b'         | % 15
            e8 a b b, e,2\fermata        % 16
          }
        }
      >>
    >>
  }
}
