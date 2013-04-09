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
#(set-global-staff-size 16)

\paper {
  line-width    = 188\mm
  left-margin   = 10\mm
  top-margin    = 10\mm
  bottom-margin = 20\mm
  ragged-last-bottom = ##t 
  ragged-bottom = ##f
  annotate-spacing = ##f
  page-breaking = #ly:page-turn-breaking
  #(define page-breaking ly:page-turn-breaking)
}

\layout {
  \context {
    \RemoveEmptyStaffContext
  }
}

\header {
  title = \markup \center-column { \line { \concat { III \override #'(baseline-skip . 2) \super e } Leçon } "du Vendredy" }
  %subtitle =
  composer =  \markup \right-column { "Michel-Richard de Lalande" \small "(1657-1726)" }
  tagline = ""
  copyright = \markup { "Copyright : " \char ##x00A9 " 2013 Benjamin Coudrin. Copyleft : released under WTFPL License" }
}

\include "../../../3rdParty/Viole/ornements-viole.ly"

\score {
  % INCIPIT
  %********************************************************************
  \new StaffGroup  <<
    \new Voice = "soprano" <<
      #(set-accidental-style 'forget)
      \set Staff.instrumentName = #""
      \set Staff.shortInstrumentName = #""
      \relative c'' {
        \key a \major
        \time 2/2
        \clef treble
        a2. b4 \grace b8 (cis2) r4 cis
        cis4. (d8 cis4 \vplaintehoriz b8 [a16]) b
        \grace b8 (cis2) cis4. cis8
        cis4. (d16 [cis]) \vplaintehoriz b4. cis16 [a]
        \grace a8 (b4) b r \vpmordant gis8. [a16]
        b4 s16 (cis16 [b cis] \vpmordant cis4. b16 [cis])
        d4. (e16 [d] \vpmordant cis4. b8)
        a2 r8 b [\vpmordant gis a]
        b4. (cis16 [b] \vpmordant b4. a16 [b])
        cis2 ( r8 d [ b d]) cis2 (\vpmordant b) a1
        \bar "|."
      }
    >>
    
    \new Lyrics \lyricsto soprano {
        In- ci- pit o- ra- __ ti- o
        Je- re- mi- \markup{\char ##x00E6 }
        pro- phe- \markup{\concat{t \char ##x00E6 }} __
        _ _ _ _ _ _ _ _ _ _ _ _ _
    }
    
    \new Staff <<
      #(set-accidental-style 'forget)
      \set Staff.instrumentName = #""
      \set Staff.shortInstrumentName = #""
      
      \figuremode {
        s2 <5/> s1 <7>2 <4>4 <_+>
        s1 s2 <6>4 <6> s1
        <4\+>2 <6\\> s1 <5> <5/>
        s2 <6 5> <6 4> <7> s1
      }
      
      \relative c' {
        \clef bass
        \key a \major 
        \time 2/2
        a2 gis a cis, d e a, r
        a' gis4 fis e1
        d2 cis b1 fis' gis
        a2 d, e e, a1
      }
    >>
 >>
}
 
\score {
  % Recitatif 1 (Recordare)
  %********************************************************************
  \new StaffGroup  <<
    \new Voice = "soprano" <<
      #(set-accidental-style 'forget)
      \set Staff.instrumentName = #""
      \set Staff.shortInstrumentName = #""
      \relative c'' {
        \key a \major
        \time 2/2
        \clef treble
        r2^\markup{Récitatif} a4 cis e e b cis a a a (gis8) a
        \grace a8 (b2) e4. d8 fis2 fis4 r
        cis e \vplaintehoriz d8. e16 cis4
        cis2 (\vpmordant b) a cis4. a8
        
        \bar "|."
      }
    >>
    
    \new Lyrics \lyricsto soprano {
    }
    
    \new Staff <<
      #(set-accidental-style 'forget)
      \set Staff.instrumentName = #""
      \set Staff.shortInstrumentName = #""
      
      \figuremode {
      }
      
      \relative c' {
        \clef bass
        \key a \major 
        \time 2/2
      }
    >>
 >>
}