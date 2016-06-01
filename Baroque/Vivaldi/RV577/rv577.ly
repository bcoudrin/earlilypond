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

\include "../../../include/format.ily"
\include "../../../include/notation.ily"
\include "../../../include/notes.ily"

\header {
  tagline = \markup { "Copyright : " \char ##x00A9 " 2013-2016 Earlilypond, Benjamin Coudrin" }
  composer = "Antonio Vivaldi"
  composerDate = "1678-1741"
  date = "ca 1720"
  title = "Concerto per l'Orchestra di Dresda"
  subtitle = "in Sol minore"
  catalogue = "RV 577"
  editor = "Benjamin Coudrin"
  sources = \markup \left-column {
    "Sources : "
     "[1] Concerto del Vivaldi per l'Orchestra di Dresda, Ms Foà vol.32 (cc. 339r-354r), Bi­blioteca Nazionale Universitaria, Torino. "
    \with-url #"http://www.internetculturale.it/opencms/opencms/it/collezioni/collezione_0042.html" {"http://www.internetculturale.it/opencms/opencms/it/collezioni/collezione_0042.html"}
  }
}

\paper {
  bookTitleMarkup = \pieceBigTitleMarkupNoSource
  #(define page-breaking ly:minimal-breaking)
}

\layout {
  \layoutCommons
}

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
  \time 4/4
  %\mark \markup \bold \large "Allegro"
  s1*90 s4 \bar "|."
  \mark \markup \center-column {"DC sino" "al Segno" \musicglyph #"scripts.ufermata" }
}

controlsecond = {
  \time 3/4
  \mark \markup \bold \large "Largo non molto"
  \repeat volta 2 { R2.*8 }
  \repeat volta 2 { R2.*10}
}

controlthird = {
  \time 3/4
  \mark \markup \bold \large "Allegro"
  s2.*132 s4 \bar "|."
  \mark \markup \fontsize #-2 \center-column {"DC sino" "al Segno" \musicglyph #"scripts.ufermata" }
}

% Front page
\bookpart {
  \header {
    title = \markup \fontsize #-2 \center-column \caps {"Concerto" "per l'Orchestra di Dresda"}
  }
  \paper {
    bookTitleMarkup = \titlePageMarkup
    print-page-number = ##f
  }
  \markup\null
}

% Blank page
\bookpart {
  \paper {
    bookTitleMarkup = \markup\null
    print-page-number = ##f
  }
  \markup\null
}

% Notes
\bookpart {
  \paper {
    bookTitleMarkup = \bookNotePageMarkup
    print-page-number = ##f
  }
  
  \markup {
    \column {
      \vspace #5
      "Sources : "
      \wordwrap-lines {"[1] " \italic "Concerto del Vivaldi per l'Orchestra di Dresda," "Ms Foà vol.32 (cc. 339r-354r)" "Bi­blioteca Nazionale Universitaria, Torino."}
      \with-url #"http://www.internetculturale.it/opencms/opencms/it/collezioni/collezione_0042.html" {"http://www.internetculturale.it/opencms/opencms/it/collezioni/collezione_0042.html"}
      \vspace #1
    }
  }
  
  \markup \vspace #12
  
  \licenceText
}

% Blank page
\bookpart {
  \paper {
    bookTitleMarkup = \markup\null
    print-page-number = ##f
  }
  \markup\null
}

% Conductor
\bookpart {
  \markup \vspace #2

  \score {
    <<
      \new Lyrics << \controlfirst >> 
      \new Staff <<
        \set Staff.instrumentName = \markup\fontsize #-1 \center-column{"Violino" "principale"}
        \set Staff.shortInstrumentName = \markup\fontsize #-1 \center-column{"Vp"}
        \violinoprincipalefirst >>
      \new StaffGroup <<
        \set StaffGroup.instrumentName = \markup\fontsize #-1 "Violini"
        \set StaffGroup.shortInstrumentName = \markup\fontsize #-1 "V"
        \new Staff << \violinoprimofirst >>
        \new Staff << \violinosecundofirst >>
      >>
      \new StaffGroup <<
        \set StaffGroup.instrumentName = \markup\fontsize #-1 "Hautbois"
        \set StaffGroup.shortInstrumentName = \markup\fontsize #-1 "H"
        \new Staff << \hautboisprimofirst >>
        \new Staff << \hautboissecundofirst >>
      >>
      \new StaffGroup <<
        \set StaffGroup.instrumentName = \markup\fontsize #-1 "Flauti"
        \set StaffGroup.shortInstrumentName = \markup\fontsize #-1 "Fl"
        \new Staff << \flautoprimofirst >>
        \new Staff << \flautosecundofirst >>
      >>
      \new Staff <<
        \set Staff.instrumentName = \markup\fontsize #-1 "Viola"
        \set Staff.shortInstrumentName = \markup\fontsize #-1 "Va"
        \violafirst >>
      \new Staff <<
        \set Staff.instrumentName = \markup\fontsize #-1 "Fagotto"
        \set Staff.shortInstrumentName = \markup\fontsize #-1 "Fg"
        \fagottofirst >>
      \new Staff <<
        \set Staff.instrumentName = \markup\fontsize #-1 "Bassi tutti"
        \set Staff.shortInstrumentName = \markup\fontsize #-1 "B"
        \bassituttifirst >>
    >>
    \layout {\layoutCommonsWithEmptyStaves}
  }

  \score {
    <<
      \new Lyrics << \controlsecond >> 
      \new StaffGroup <<
        \new Staff << \set Staff.instrumentName = \markup\fontsize #-1 \center-column{"Violino" "Solo ò" "Hautbois"} \violinoprincipalesecond >>
        \new Staff << \set Staff.instrumentName = \markup\fontsize #-1 "Fagotto" \fagottosecond >>
      >>
    >>
    \layout {\layoutCommons }
  }
  
  \score {
    <<
      \new Lyrics << \controlthird >> 
      \new Staff <<
        \set Staff.instrumentName = \markup\fontsize #-1 \center-column{"Violino" "principale"}
        \set Staff.shortInstrumentName = \markup\fontsize #-1 \center-column{"Vp"}
        \violinoprincipalethird >>
      \new StaffGroup <<
        \set StaffGroup.instrumentName = \markup\fontsize #-1 "Violini"
        \set StaffGroup.shortInstrumentName = \markup\fontsize #-1 "V"
        \new Staff << \violinoprimothird >>
        \new Staff << \violinosecundothird >>
      >>
      \new StaffGroup <<
        \set StaffGroup.instrumentName = \markup\fontsize #-1 "Hautbois"
        \set StaffGroup.shortInstrumentName = \markup\fontsize #-1 "H"
        \new Staff << \hautboisprimothird >>
        \new Staff << \hautboissecundothird >>
      >>
      \new StaffGroup <<
        \set StaffGroup.instrumentName = \markup\fontsize #-1 "Flauti"
        \set StaffGroup.shortInstrumentName = \markup\fontsize #-1 "Fl"
        \new Staff << \flautoprimothird >>
        \new Staff << \flautosecundothird >>
      >>
      \new Staff <<
        \set Staff.instrumentName = \markup\fontsize #-1 "Viola"
        \set Staff.shortInstrumentName = \markup\fontsize #-1 "Va"
        \violathird >>
      \new Staff <<
        \set Staff.instrumentName = \markup\fontsize #-1 "Fagotto"
        \set Staff.shortInstrumentName = \markup\fontsize #-1 "Fg"
        \fagottothird >>
      \new Staff <<
        \set Staff.instrumentName = \markup\fontsize #-1 "Bassi tutti"
        \set Staff.shortInstrumentName = \markup\fontsize #-1 "B"
        \bassituttithird >>
    >>
    \layout {\layoutCommonsWithEmptyStaves }
  }
}

% Violino principale
\book {
  \bookOutputSuffix "ViolinoPrincipale"
  \header {
    instrument = "Violino Principale"
  }
  
  \bookpart {
    \header {
      title = \markup \fontsize #-2 \center-column \caps {"Concerto" "per l'Orchestra di Dresda"}
    }
    \paper {
      bookTitleMarkup = \partTitlePageMarkup
      print-page-number = ##f
    }
    \markup\null
  }
  \bookpart {
    \score { << \new Staff << \controlfirst  >> \new Staff << \violinoprincipalefirst >> >> \layout{\layoutCommons}}
    \markup \vspace #1
    \score { << \new Staff << \controlsecond >> \new Staff << 
      \set Staff.instrumentName = \markup\fontsize #-1 \center-column{"Violino" "Solo ò" "Hautbois"}
      \violinoprincipalesecond >> >>
      \layout{\layoutCommons} }
    \markup \vspace #1
    \score { <<	\new Staff << \controlthird  >> \new Staff << \violinoprincipalethird >> >> \layout{\layoutCommons}}
    \markup \vspace #1
    \markup \fontsize #-1 \column {
      "Sources : "
      \wordwrap-lines {"[1] " \italic "Concerto del Vivaldi per l'Orchestra di Dresda," "Ms Foà vol.32 (cc. 339r-354r)" "Bi­blioteca Nazionale Universitaria, Torino."}
      \with-url #"http://www.internetculturale.it/opencms/opencms/it/collezioni/collezione_0042.html" {"http://www.internetculturale.it/opencms/opencms/it/collezioni/collezione_0042.html"}
      \vspace #1
    }
  }
}

% Violino primo
\book {
  \bookOutputSuffix "Violino1"
  \header { instrument = "Violino 1" }
  \bookpart {
    \header {title = \markup \fontsize #-2 \center-column \caps {"Concerto" "per l'Orchestra di Dresda"}}
    \paper {
      bookTitleMarkup = \partTitlePageMarkup
      print-page-number = ##f
    }
    \markup\null
  }
  \bookpart {  
    \score { << \new Staff << \controlfirst  >> \new Staff << \violinoprimofirst  >> >> \layout{\layoutCommons} }
  }
  \bookpart {
    \paper {bookTitleMarkup = \markup\null}
    \markup \vspace #2
    \markup \line {\hspace #10 \fontsize #1 {\bold "Largo non molto" " : tacet"}}
    \markup \vspace #1
    \score { << \new Staff << \controlthird  >> \new Staff << \violinoprimothird  >> >> \layout{\layoutCommons #(layout-set-staff-size 17)} }
    \markup \vspace #1
    \markup \fontsize #-1 \column {
      "Sources : "
      \wordwrap-lines {"[1] " \italic "Concerto del Vivaldi per l'Orchestra di Dresda," "Ms Foà vol.32 (cc. 339r-354r)" "Bi­blioteca Nazionale Universitaria, Torino."}
      \with-url #"http://www.internetculturale.it/opencms/opencms/it/collezioni/collezione_0042.html" {"http://www.internetculturale.it/opencms/opencms/it/collezioni/collezione_0042.html"}
      \vspace #1
    }
  }
}

% Violino secundo
\book {
  \bookOutputSuffix "Violino2"
  \header { instrument = "Violino 2" }
  \bookpart {
    \header {title = \markup \fontsize #-2 \center-column \caps {"Concerto" "per l'Orchestra di Dresda"}}
    \paper {
      bookTitleMarkup = \partTitlePageMarkup
      print-page-number = ##f
    }
    \markup\null
  }
  \bookpart {  
    \score { << \new Staff << \controlfirst  >> \new Staff << \violinosecundofirst  >> >> \layout{\layoutCommons} }
  }
  \bookpart {
    \paper {bookTitleMarkup = \markup\null}
    \markup \vspace #2
    \markup \line {\hspace #10 \fontsize #1 {\bold "Largo non molto" " : tacet"}}
    \markup \vspace #1
    \score { << \new Staff << \controlthird  >> \new Staff << \violinosecundothird  >> >> \layout{\layoutCommons} }
    \markup \vspace #1
    \markup \fontsize #-1 \column {
      "Sources : "
      \wordwrap-lines {"[1] " \italic "Concerto del Vivaldi per l'Orchestra di Dresda," "Ms Foà vol.32 (cc. 339r-354r)" "Bi­blioteca Nazionale Universitaria, Torino."}
      \with-url #"http://www.internetculturale.it/opencms/opencms/it/collezioni/collezione_0042.html" {"http://www.internetculturale.it/opencms/opencms/it/collezioni/collezione_0042.html"}
      \vspace #1
    }
  }
}

% Hautbois primo
\book {
  \bookOutputSuffix "Hautbois1"
  \header { instrument = "Hautbois 1" }
  \bookpart {
    \header {title = \markup \fontsize #-2 \center-column \caps {"Concerto" "per l'Orchestra di Dresda"}}
    \paper {
      bookTitleMarkup = \partTitlePageMarkup
      print-page-number = ##f
    }
    \markup\null
  }
  \bookpart {
    \score { << \new Staff << \controlfirst  >> \new Staff << \hautboisprimofirst  >> >> \layout{\layoutCommons} }
  }
  \bookpart {
    \paper {bookTitleMarkup = \markup\null}
    \markup \vspace #2
    \score { << \new Staff << \controlsecond >> \new Staff <<
      \set Staff.instrumentName = \markup\fontsize #-1 \center-column{"Violino" "Solo ò" "Hautbois"}
      \violinoprincipalesecond >> >> \layout{\layoutCommons} }
    \markup \vspace #1
    \score { << \new Staff << \controlthird  >> \new Staff << \hautboisprimothird  >> >> \layout{\layoutCommons} }
    \markup \vspace #1
    \markup \fontsize #-1 \column {
      "Sources : "
      \wordwrap-lines {"[1] " \italic "Concerto del Vivaldi per l'Orchestra di Dresda," "Ms Foà vol.32 (cc. 339r-354r)" "Bi­blioteca Nazionale Universitaria, Torino."}
      \with-url #"http://www.internetculturale.it/opencms/opencms/it/collezioni/collezione_0042.html" {"http://www.internetculturale.it/opencms/opencms/it/collezioni/collezione_0042.html"}
      \vspace #1
    }
  }
}

% Hautbois secundo
\book {
  \bookOutputSuffix "Hautbois2"
  \header { instrument = "Hautbois 2" }
  \bookpart {
    \header {title = \markup \fontsize #-2 \center-column \caps {"Concerto" "per l'Orchestra di Dresda"}}
    \paper {
      bookTitleMarkup = \partTitlePageMarkup
      print-page-number = ##f
    }
    \markup\null
  }
  \bookpart {  
    \score { << \new Staff << \controlfirst  >> \new Staff << \hautboissecundofirst  >> >> \layout{\layoutCommons} }
  }
  \bookpart {
    \paper {bookTitleMarkup = \markup\null}
    \markup \vspace #2
    \markup \line {\hspace #10 \fontsize #1 {\bold "Largo non molto" " : tacet"}}
    \markup \vspace #1
    \score { << \new Staff << \controlthird  >> \new Staff << \hautboissecundothird  >> >> \layout{\layoutCommons} }
    \markup \vspace #1
    \markup \fontsize #-1 \column {
      "Sources : "
      \wordwrap-lines {"[1] " \italic "Concerto del Vivaldi per l'Orchestra di Dresda," "Ms Foà vol.32 (cc. 339r-354r)" "Bi­blioteca Nazionale Universitaria, Torino."}
      \with-url #"http://www.internetculturale.it/opencms/opencms/it/collezioni/collezione_0042.html" {"http://www.internetculturale.it/opencms/opencms/it/collezioni/collezione_0042.html"}
      \vspace #1
    }
  }
}

% Flauto primo
\book {
  \bookOutputSuffix "Flauto1"
  \header { instrument = "Flauto 1" }
  \bookpart {
    \header {title = \markup \fontsize #-2 \center-column \caps {"Concerto" "per l'Orchestra di Dresda"}}
    \paper {
      bookTitleMarkup = \partTitlePageMarkup
      print-page-number = ##f
    }
    \markup\null
  }
  \bookpart {
    \score { << \new Staff << \controlfirst  >> \new Staff << \flautoprimofirst  >> >> \layout{\layoutCommons} }
    \markup \vspace #2
    \markup \line {\hspace #10 \fontsize #1 {\bold "Largo non molto" " : tacet"}}
    \markup \vspace #1
    \score { << \new Staff << \controlthird  >> \new Staff << \flautoprimothird  >> >> \layout{\layoutCommons} }
    \markup \vspace #1
    \markup \fontsize #-1 \column {
      "Sources : "
      \wordwrap-lines {"[1] " \italic "Concerto del Vivaldi per l'Orchestra di Dresda," "Ms Foà vol.32 (cc. 339r-354r)" "Bi­blioteca Nazionale Universitaria, Torino."}
      \with-url #"http://www.internetculturale.it/opencms/opencms/it/collezioni/collezione_0042.html" {"http://www.internetculturale.it/opencms/opencms/it/collezioni/collezione_0042.html"}
      \vspace #1
    }
  }
}

% Flauto secundo
\book {
  \bookOutputSuffix "Flauto2"
  \header { instrument = "Flauto 2" }
  \bookpart {
    \header {title = \markup \fontsize #-2 \center-column \caps {"Concerto" "per l'Orchestra di Dresda"}}
    \paper {
      bookTitleMarkup = \partTitlePageMarkup
      print-page-number = ##f
    }
    \markup\null
  }
  \bookpart {
    \score { << \new Staff << \controlfirst  >> \new Staff << \flautosecundofirst  >> >> \layout{\layoutCommons} }
  }
  \bookpart {
    \paper {bookTitleMarkup = \markup\null}
    \markup \vspace #2
    \markup \line {\hspace #10 \fontsize #1 {\bold "Largo non molto" " : tacet"}}
    \markup \vspace #1
    \score { << \new Staff << \controlthird  >> \new Staff << \flautosecundothird  >> >> \layout{\layoutCommons} }
    \markup \vspace #1
    \markup \fontsize #-1 \column {
      "Sources : "
      \wordwrap-lines {"[1] " \italic "Concerto del Vivaldi per l'Orchestra di Dresda," "Ms Foà vol.32 (cc. 339r-354r)" "Bi­blioteca Nazionale Universitaria, Torino."}
      \with-url #"http://www.internetculturale.it/opencms/opencms/it/collezioni/collezione_0042.html" {"http://www.internetculturale.it/opencms/opencms/it/collezioni/collezione_0042.html"}
      \vspace #1
    }
  }
}

% Viola
\book {
  \bookOutputSuffix "Viola"
  \header { instrument = "Viola" }
  \bookpart {
    \header {title = \markup \fontsize #-2 \center-column \caps {"Concerto" "per l'Orchestra di Dresda"}}
    \paper {
      bookTitleMarkup = \partTitlePageMarkup
      print-page-number = ##f
    }
    \markup\null
  }
  \bookpart {
    \score { << \new Staff << \controlfirst >> \new Staff << \violafirst >> >> \layout{\layoutCommons #(layout-set-staff-size 16)} }
    \markup \vspace #1
    \markup \line {\hspace #10 \fontsize #1 {\bold "Largo non molto" " : tacet"}}
    \markup \vspace #1
    \score { << \new Staff << \controlthird >> \new Staff << \violathird >> >> \layout{\layoutCommons #(layout-set-staff-size 16)} }
    \markup \fontsize #-1 \column {
      "Sources : "
      \wordwrap-lines {"[1] " \italic "Concerto del Vivaldi per l'Orchestra di Dresda," "Ms Foà vol.32 (cc. 339r-354r)" "Bi­blioteca Nazionale Universitaria, Torino."}
      \with-url #"http://www.internetculturale.it/opencms/opencms/it/collezioni/collezione_0042.html" {"http://www.internetculturale.it/opencms/opencms/it/collezioni/collezione_0042.html"}
    }
  }
}

% Fagotto
\book {
  \bookOutputSuffix "Fagotto"
  \header { instrument = "Fagotto" }
  \bookpart {
    \header {title = \markup \fontsize #-2 \center-column \caps {"Concerto" "per l'Orchestra di Dresda"}}
    \paper {
      bookTitleMarkup = \partTitlePageMarkup
      print-page-number = ##f
    }
    \markup\null
  }
  \bookpart {
    \score { << \new Staff << \controlfirst  >> \new Staff << \fagottofirst  >> >> \layout{\layoutCommons} }
    \markup \vspace #2
    \score { << \new Staff << \controlsecond >> \new Staff << \fagottosecond >> >> \layout{\layoutCommons} }
    \markup \vspace #1
    \score { << \new Staff << \controlthird  >> \new Staff << \fagottothird  >> >> \layout{\layoutCommons} }
    \markup \vspace #1
    \markup \fontsize #-1 \column {
      "Sources : "
      \wordwrap-lines {"[1] " \italic "Concerto del Vivaldi per l'Orchestra di Dresda," "Ms Foà vol.32 (cc. 339r-354r)" "Bi­blioteca Nazionale Universitaria, Torino."}
      \with-url #"http://www.internetculturale.it/opencms/opencms/it/collezioni/collezione_0042.html" {"http://www.internetculturale.it/opencms/opencms/it/collezioni/collezione_0042.html"}
      \vspace #1
    }
  }
}

% Tiorba
\book {
  \bookOutputSuffix "Tiorba"
  \header { instrument = "Tiorba" }
  \bookpart {
    \header {title = \markup \fontsize #-2 \center-column \caps {"Concerto" "per l'Orchestra di Dresda"}}
    \paper {
      bookTitleMarkup = \partTitlePageMarkup
      print-page-number = ##f
    }
    \markup\null
  }
  \bookpart {
    \score { << \new Staff << \controlfirst  >> \new Staff << \fagottofirst  >> >> \layout{\layoutCommons} }
    \markup \vspace #1
    \score {
      <<
        \new Lyrics << \controlsecond >> 
        \new StaffGroup <<
          \new Staff << \set Staff.instrumentName = \markup\fontsize #-1 \center-column{"Violino" "Solo ò" "Hautbois"} \violinoprincipalesecond >>
          \new Staff << \set Staff.instrumentName = \markup\fontsize #-1 "Tiorba" \fagottosecond >>
        >>
      >>
      \layout {\layoutCommons }
    }
    \markup \vspace #1
    \score { << \new Staff << \controlthird  >> \new Staff << \fagottothird  >> >> \layout{\layoutCommons} }
    \markup \vspace #1
    \markup \fontsize #-1 \column {
      "Sources : "
      \wordwrap-lines {"[1] " \italic "Concerto del Vivaldi per l'Orchestra di Dresda," "Ms Foà vol.32 (cc. 339r-354r)" "Bi­blioteca Nazionale Universitaria, Torino."}
      \with-url #"http://www.internetculturale.it/opencms/opencms/it/collezioni/collezione_0042.html" {"http://www.internetculturale.it/opencms/opencms/it/collezioni/collezione_0042.html"}
      \vspace #1
    }
  }
}

% Bassi tutti
\book {
  \bookOutputSuffix "BassiTutti"
  \header { instrument = "Bassi Tutti" }  
  \bookpart {
    \header {title = \markup \fontsize #-2 \center-column \caps {"Concerto" "per l'Orchestra di Dresda"}}
    \paper {
      bookTitleMarkup = \partTitlePageMarkup
      print-page-number = ##f
    }
    \markup\null
  }
  \bookpart {
    \score { << \new Staff << \controlfirst  >> \new Staff << \bassituttifirst  >> >> \layout{\layoutCommons} }
    \markup \line {\hspace #10 \fontsize #2 {\bold "Largo non molto" " : tacet"}}
    \markup \vspace #1
    \score { << \new Staff << \controlthird  >> \new Staff << \bassituttithird  >> >> \layout{\layoutCommons} }
    \markup \vspace #1
    \markup \fontsize #-1 \column {
      "Sources : "
      \wordwrap-lines {"[1] " \italic "Concerto del Vivaldi per l'Orchestra di Dresda," "Ms Foà vol.32 (cc. 339r-354r)" "Bi­blioteca Nazionale Universitaria, Torino."}
      \with-url #"http://www.internetculturale.it/opencms/opencms/it/collezioni/collezione_0042.html" {"http://www.internetculturale.it/opencms/opencms/it/collezioni/collezione_0042.html"}
    }
  }
}
