%%  la_couperin.ly
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

\include "../../../3rdParty/Viole/ornements-viole.ly"

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

%\book {
  \header {
    title = "Allemande La La Borde"
    composer =  \markup \right-column { "A. Forqueray" \small "(1672-1745)" }
    tagline = ""
    copyright = \markup { "Copyright : " \char ##x00A9 " 2013 Benjamin Coudrin. Copyleft : released under cc-by-3.0 License" }
  }
  
  \layout {
    \context {
      \Voice
      \consists "Horizontal_bracket_engraver"
      \override HorizontalBracket #'bracket-flare = #'(0.0 . 0.0)
    }
  }

  \score {
    \new StaffGroup <<
      \new Staff <<
        \relative c' {
          \override Fingering #'staff-padding = #'()
          \tempo "Noblement et avec sentiment"
          \key a \minor
          \time 4/4 
          \clef alto
          \repeat volta 2 {
            \partial 16 d16 |
            <d, f a d>4 r16 d'16(e f) d8_0 [a_0] f_1 [\vsmordant d_2] | % 1
            \clef bass \vleftfinger <f,-3>8 [\clef alto d''] a'8.^+ [a,16] << {\voiceOne \grace a8 (bes4)} \\ {g4} >> g'8._\markup{\bold \italic t}^+ [bes,16_\markup{\bold \italic t}] | % 2
            <<{\grace b (cis8-\tweak #'Y-offset #1.3 -\tweak #'X-offset #0.4 -+) [b16 (a)] d8 [a] g [f]} \\ {a4 r8 f8 e [d]}>> \clef bass <<{e8 [a]}\\{a,4}>> | % 3
            <<{d4 \stemDown d'8.^+_\markup{\bold \italic t} [d,16_\markup{\bold \italic t}] \stemUp \grace d8 (e4-\tweak #'Y-offset #1.7 -\tweak #'X-offset #0.5 -+)}\\{bes4-\tweak #'Y-offset #-2.3 -\tweak #'X-offset #-0.6 -+ s4 c4}>> c'8.^+_\markup{\bold \italic t} [e,16_\markup{\bold \italic t}] | % 4
            <<{\grace e8 (\once \override Stem #'direction = #UP f4-\tweak #'Y-offset #2.5 -\tweak #'X-offset #0.4 -+) \once \override Stem #'direction = #UP \once \override HorizontalBracket #'direction = #UP f-\tweak #'Y-offset #2.3 -\tweak #'X-offset #-0.6 -4\startGroup \once \override Stem #'direction = #UP f c,8 [\vtrembl e'16\stopGroup (d32 e)]}\\{d8 [c] bes [a] g [f] s4}>> | % 5
            f'8-\tweak #'Y-offset #2.3 -\tweak #'X-offset #-0.6 -4 [f,] <<{a'8-\tweak #'Y-offset #3.5 -\tweak #'X-offset #0.4 -+^\markup{\fontsize #-3 \sharp} [a] a [b16 (a)] \vtrembl gis8-\tweak #'Y-offset #2.8 -\tweak #'X-offset #0 -3 [fis16 (gis)]}\\{r8 c, d4 e-\tweak #'Y-offset #-1 -\tweak #'X-offset #-1 -2}>> | % 6
          }
        }
      >>
      
      \new FiguredBass \figuremode {
          \set figuredBassAlterationDirection = #LEFT
          \set figuredBassPlusDirection = #LEFT
          \override VerticalAxisGroup #'minimum-Y-extent = #'()
          \override BassFigureAlignment #'stacking-dir = #UP
          \override FiguredBass.BassFigure #'font-size = #-2
          \repeat volta 2 {
            \partial 16 s16 |
            s1 | % 1
            <6>2 <7 9>4. <7>8 | % 2
            <5/+>2 <6\\>4 <4>8 <_+>8 | % 3
            s4. <7>8 <7>4. <7>8 | % 4
            <7>2 <7>4. <7->8 | % 5
            s4. <6>8 <5 6>8 <5/>8 <_+>4 | % 6
          } 
        }
      
      \new Staff <<
        \relative c {
          \clef bass
          \key a \minor 
          \time 4/4
          \repeat volta 2 {
            \partial 16 r16 |
            d8 [a] f [d] d2 | % 1
            f4. d8 g4. ees8 | % 2
            f4. d8 bes'8 [\vtrembl g] a [a,] | % 3
            bes'4. g8 c4. a8 | % 4
            d8 [a] bes [f] \vtrembl g [f] c [c'] | % 5
            f,4 r8 c'8 d [dis] e [e,] | % 6
          }
        }
      >>
    >>
  }
  
%}
