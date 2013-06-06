%%  twv41a6.ly
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
  title = "Sonata A-Moll"
  subtitle = \markup \center-column { "für Viola di gamba une Continuo"\small \italic "(TWV 41:a6)" }
  composer =  \markup \right-column { "Georg Philipp Telemann" \small "(1681-1767)" }
  tagline = ""
  copyright = \markup { "Copyright : " \char ##x00A9 " 2013 Benjamin Coudrin. Copyleft : released under cc-by-3.0 License" }
}
  
  
%% LARGO
\score {
  \new StaffGroup <<
    \new Staff <<
      \set Staff.instrumentName = #"Viola di gamba"
      \set Staff.shortInstrumentName = #""
      \relative c' {
        \tempo "Largo"
        \key a \minor
        \time 6/4
        \clef alto
        \repeat volta 2 {
          a2. f'
          e r4 a, b
          c b a b e d
          c b a r c d
          e d c d g f
          e d c r b2 ~
          b4 c b ~ b d8 [(c)] b4 ~
          b c b ~ b f' e
          d c8 [(b)] c4 b a8 [(gis)] a4
          gis1.
        }
        \repeat volta 2 {
        }
      }
    >>
      
    \new FiguredBass \figuremode {
        \set figuredBassAlterationDirection = #LEFT
        \set figuredBassPlusDirection = #LEFT
        \override VerticalAxisGroup #'minimum-Y-extent = #'()
        \override BassFigureAlignment #'stacking-dir = #UP
        \override FiguredBass.BassFigure #'font-size = #-2
        s2 <6>2. <5 6>4
        s2 <6>4 <7>2 <6>4
        <4 6>2. <_+ 5>
        s <5>2 <6\\>4
        <4 6>2. <3 5>
        s <5 6>2 <_+>4
        <3 4 6>2. <5 6>2 <_+>4
        <3 4 6>2. <5 6>2 <6>4
        <6\\>2. <6>4 <_+> <6>
        <_+>1.
    }
    
    \new Staff <<
      \set Staff.instrumentName = #"Continuo"
      \set Staff.shortInstrumentName = #""
      \relative c {
        \clef bass
        \key a \minor 
        \time 6/4
        \repeat volta 2 {
          a4 b c d c b
          c d e f2.
          e e,
          a a'
          g g,
          c d2 e4
          f e f d2 e4
          f e f d2 c4
          b2 a4 d, e f
          e e' (b) e,2 r4
        }
        \repeat volta 2 {
          
        }
      }
    >>
  >>
}
  
%% ALLEGRO
\score {
  \new StaffGroup <<
    \new Staff <<
      \relative c' {
        \tempo "Allegro"
        \key a \minor
        \time 4/4
        \clef alto
        \repeat volta 2 {
          a4 c8 [b16 a] b8 [e,] e'4
        }
        \repeat volta 2 {
        }
      }
    >>
     
    \new FiguredBass \figuremode {
        \set figuredBassAlterationDirection = #LEFT
        \set figuredBassPlusDirection = #LEFT
        \override VerticalAxisGroup #'minimum-Y-extent = #'()
        \override BassFigureAlignment #'stacking-dir = #UP
        \override FiguredBass.BassFigure #'font-size = #-2
        s2 <2 4>8 <6>4.
    }
      
    \new Staff <<
      \relative c' {
        \clef bass
        \key a \minor
        \repeat volta 2 {
          r4 a r8 g [g f16 e]
        }
        \repeat volta 2 {
        }
      }
    >>
  >>
}

%% SOAVE  
\score {
  \new StaffGroup <<
    \new Staff <<
      \relative c'' {
        \tempo "Soave"
        \key a \minor
        \time 6/8 
        \clef alto
        \repeat volta 2 {
          r8 g [e] c16 [(d) c (b) c8]
        }
        \repeat volta 2 {
        }
      }
    >>
      
    \new FiguredBass \figuremode {
        \set figuredBassAlterationDirection = #LEFT
        \set figuredBassPlusDirection = #LEFT
        \override VerticalAxisGroup #'minimum-Y-extent = #'()
        \override BassFigureAlignment #'stacking-dir = #UP
        \override FiguredBass.BassFigure #'font-size = #-2
        s4 <6>8 s4 <6>8
    }
      
    \new Staff <<
      \relative c {
        \key a \minor
        \clef bass
        \time 6/8
        \repeat volta 2 {
          c8 [r g'] a [r e]
        }
        \repeat volta 2 {
        }
      }
    >>
  >>
}
  
%% ALLEGRO
\score {
  \new StaffGroup <<
    \new Staff <<
      \relative c' {
        \tempo "Allegro"
        \time 2/4 
        \key a \minor
        \clef alto
        \partial 8 e8
        \repeat volta 2 {
          a,8 [c] b [a16 gis]
        }
        \repeat volta 2 {
        }
      }
    >>
    
    \new FiguredBass \figuremode {
        \set figuredBassAlterationDirection = #LEFT
        \set figuredBassPlusDirection = #LEFT
        \override VerticalAxisGroup #'minimum-Y-extent = #'()
        \override BassFigureAlignment #'stacking-dir = #UP
        \override FiguredBass.BassFigure #'font-size = #-2
        <6>8
        s4 <6>8 <_+>
    }
      
    \new Staff <<
      \relative c' {
        \clef bass
        \key a \minor
        \time 2/4
        \partial 8 gis8
        \repeat volta 2 {
          a4 d,8 [e]
        }
        \repeat volta 2 {
        }
      }
    >>
  >>
}
