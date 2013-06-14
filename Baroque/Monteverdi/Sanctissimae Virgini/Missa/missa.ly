\include "Missa/missa_cantus.ly"
\include "Missa/missa_altus.ly"
\include "Missa/missa_tenor.ly"
\include "Missa/missa_bassus.ly"
\include "Missa/missa_quintus.ly"
\include "Missa/missa_sextus.ly"
\include "Missa/missa_continuo.ly"


fughe = \markup {
  \score {
    \new Staff = "missa_continuo" {
        \override Staff.TimeSignature #'style = #'mensural
        \set Staff.instrumentName = \markup{ \center-column { "Bassus" \line { "Generalis" } } }
        \fughecontinuo
      }
      \layout {}
  }
}

missa = \markup {
  \score {
    <<
      \new StaffGroup = "missa_choral" <<
        \new Voice = "missacantus" {
          \override Staff.TimeSignature #'style = #'mensural
          \set Staff.instrumentName = #"Cantus"
          \missacantus
        }
        \new Lyrics \lyricsto missacantus { \lyrmissacantus }
        \new Staff = "missa_altus" {
          \override Staff.TimeSignature #'style = #'mensural
          \set Staff.instrumentName = #"Altus"
          \missaaltus
        }
        \new Staff = "missa_tenor" {
          \override Staff.TimeSignature #'style = #'mensural
          \set Staff.instrumentName = #"Tenor"
          \missatenor
        }
        \new Staff = "missa_bassus" {
          \override Staff.TimeSignature #'style = #'mensural
          \set Staff.instrumentName = #"Bassus"
          \missabassus
        }
        \new Staff = "missa_quintus" {
          \override Staff.TimeSignature #'style = #'mensural
          \set Staff.instrumentName = #"Quintus"
          \missaquintus
        }
        \new Staff = "missa_sextus" {
          \override Staff.TimeSignature #'style = #'mensural
          \set Staff.instrumentName = #"Sextus"
          \missasextus
        }
      >>
      \new Staff = "missa_continuo" {
        \override Staff.TimeSignature #'style = #'mensural
        \set Staff.instrumentName = \markup{ \center-column { "Bassus" \line { "Generalis" } } }
        \missacontinuo
      }
    >>
    \layout{
      \context {
        \Staff
        \RemoveEmptyStaves
        \override VerticalAxisGroup #'remove-first = ##t
      }
    }
  }
}