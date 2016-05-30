%%  rv577.ly
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

\version "2.16.0"

\include "../../../include/format.ily"

\header {
  tagline = \markup { "Copyright : " \char ##x00A9 " 2013-2015 Earlilypond, Benjamin Coudrin" }
  composer = "Antonio Vivaldi"
  composerDate = "1678-1741"
  date = "ca 1720"
  title = "Concerto in Sol minore"
  subtitle = \markup \center-column { "per l'Orchestra di Dresda" "RV 577"}
  source = \markup \left-column {
    "Sources : "
     "[1] Concerto del Vivaldi per l'Orchestra di Dresda, collection Foà vol.32 (339-354), Bi­blioteca Nazionale Universitaria, Torino. "
    \with-url #"http://www.internetculturale.it/opencms/opencms/it/collezioni/collezione_0042.html" {"http://www.internetculturale.it/opencms/opencms/it/collezioni/collezione_0042.html"}
  }
}

#(set-default-paper-size "a4")
#(set-global-staff-size 15)

\paper {
  #(define page-breaking ly:minimal-breaking)
  bookTitleMarkup = \markup \abs-fontsize #6 \column {
    \vspace #1
    \fill-line { \override #'(font-name . "Calluna") \fontsize #5 \fromproperty #'header:composer }
    \fill-line { \override #'(font-name . "Calluna") \fontsize #2 \fromproperty #'header:composerDate }
    \vspace #1
    \fill-line { \override #'(font-name . "Calluna Bold") \fontsize #8 \fromproperty #'header:title }
    \vspace #1
    \fill-line { \override #'(font-name . "Calluna Bold") \fontsize #2 \fromproperty #'header:subtitle }
    \vspace #1
    \fill-line { \postscript #"-20 0 moveto 40 0 rlineto stroke" }
    \vspace #1
    \fill-line { \override #'(font-name . "Calluna") \fontsize #6 \fromproperty #'header:instrument }
    \vspace #2
    \fill-line { \override #'(font-name . "Calluna Light") \fontsize #-1 \fromproperty #'header:source }
    \vspace #2    
  }
}
\markup\null

\include "violinoprincipale.ly"
\include "flauto1.ly"
\include "flauto2.ly"
\include "hautbois1.ly"
\include "hautbois2.ly"
\include "fagotto.ly"
\include "violini1.ly"
\include "violini2.ly"
\include "viole.ly"
\include "bassitutti.ly"

controlfirst = {
  \mark \markup \bold \large "Allegro"
  s1*90 \partial 4 s4 \bar "|."
  \mark \markup \fontsize #-2 \center-column {"DC sino" "al Segno" \musicglyph #"scripts.ufermata" }
}

controlsecond = {
  \mark \markup \bold \large "Largo non molto"
  \repeat volta 2 { R2.*8 }
  \repeat volta 2 { R2.*10}
}

controlthird = {
  \mark \markup \bold \large "Allegro"
  s2.*132 \partial 4 s4 \bar "|."
  \mark \markup \fontsize #-2 \center-column {"DC sino" "al Segno" \musicglyph #"scripts.ufermata" }
}


\score {
  <<
    \new Staff << \controlfirst >> 
    \new Staff << \set Staff.instrumentName = \markup\fontsize #-1 \center-column{"Violino" "principale"} \violinoprincipalefirst >>
    \new StaffGroup <<
      \set StaffGroup.instrumentName = \markup\fontsize #-1 "Violini"
      \new Staff << \violinoprimofirst >>
      \new Staff << \violinosecundofirst >>
    >>
    \new StaffGroup <<
      \set StaffGroup.instrumentName = \markup\fontsize #-1 "Hautbois"
      \new Staff << \hautboisprimofirst >>
      \new Staff << \hautboissecundofirst >>
    >>
    \new StaffGroup <<
      \set StaffGroup.instrumentName = \markup\fontsize #-1 "Flauti"
      \new Staff << \flautoprimofirst >>
      \new Staff << \flautosecundofirst >>
    >>
    \new Staff << \set Staff.instrumentName = \markup\fontsize #-1 "Viola" \violafirst >>
    \new Staff << \set Staff.instrumentName = \markup\fontsize #-1 "Fagotto" \fagottofirst >>
    \new Staff << \set Staff.instrumentName = \markup\fontsize #-1 "Bassi tutti" \bassituttifirst >>
  >>
  \layout {\layoutCommons }
}

\score {
  <<
    \new Staff << \controlsecond >> 
    \new StaffGroup <<
      \new Staff << \set Staff.instrumentName = \markup\fontsize #-1 \center-column{"Violino" "Solo ò" "Hautbois"} \violinoprincipalesecond >>
      \new Staff << \set Staff.instrumentName = \markup\fontsize #-1 "Fagotto" \fagottosecond >>
    >>
  >>
  \layout {\layoutCommons }
}

\score {
  <<
    \new Staff << \controlthird >> 
    \new Staff << \set Staff.instrumentName = \markup\fontsize #-1 \center-column{"Violino" "principale"} \violinoprincipalethird >>
    \new StaffGroup <<
      \set StaffGroup.instrumentName = \markup\fontsize #-1 "Violini"
      \new Staff << \violinoprimothird >>
      \new Staff << \violinosecundothird >>
    >>
    \new StaffGroup <<
      \set StaffGroup.instrumentName = \markup\fontsize #-1 "Hautbois"
      \new Staff << \hautboisprimothird >>
      \new Staff << \hautboissecundothird >>
    >>
    \new StaffGroup <<
      \set StaffGroup.instrumentName = \markup\fontsize #-1 "Flauti"
      \new Staff << \flautoprimothird >>
      \new Staff << \flautosecundothird >>
    >>
    \new Staff << \set Staff.instrumentName = \markup\fontsize #-1 "Viola" \violathird >>
    \new Staff << \set Staff.instrumentName = \markup\fontsize #-1 "Fagotto" \fagottothird >>
    \new Staff << \set Staff.instrumentName = \markup\fontsize #-1 "Bassi tutti" \bassituttithird >>
  >>
  \layout {\layoutCommons }
}

% Viola
\book {
  \bookOutputSuffix "Viola"
  \header { instrument = "Viola" }
  
  \score { << \new Staff << \controlfirst >> \new Staff << \violafirst >> >> \layout{\layoutCommons #(layout-set-staff-size 17)} }
  \score { << \new Staff << \controlsecond >> >> \layout{\layoutCommons #(layout-set-staff-size 17)} }
  \score { << \new Staff << \controlthird >> \new Staff << \violathird >> >> \layout{\layoutCommons #(layout-set-staff-size 17)} }
}
