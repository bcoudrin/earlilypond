\version "2.16.0"

\header{
  title = \markup \center-column { "SANCTISSIMAE" \fontsize #-2 "VIRGINI" \fontsize #-3 "MISSA SENIS VOCIBUS" \fontsize #-4 "AC VESPERAE PLURIBUS" \fontsize #-5 "DECANTANDAE," \fontsize #-6 "CUM NONNULLIS SACRIS CONTENTIBUS" \fontsize #-7 "ad Sacella fiue Principum Cubicula accomodata."}
  composer = "Claudio Monteverdi"
  date = "1567-1643"
  publisher = \markup { "Copyright : " \char ##x00A9 " 2013 Benjamin Coudrin" }
  tagline = ""
}

\paper{
  tocTitleMarkup = \markup \huge \column {
    \hspace #2
    \fill-line { \null "INDEX" \null }
    \hspace #1
  }
  tocItemMarkup = \markup \large \fill-line {
    \fromproperty #'toc:text \fromproperty #'toc:page
  }
}
\layout{}

% Title Page
\include "definitions.ly"

% Contents
\include "Missa/missa.ly"
\include "Vesperae/vesperae.ly"


% Conductor
\book {
  \bookOutputSuffix "Conductor"
  \header {
    instrument = "Conductor"
  }  
  \include "book_header.ly"
  
  \missa
  \vesperae
}

  
  
