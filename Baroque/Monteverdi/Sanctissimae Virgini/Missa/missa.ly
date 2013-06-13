\include "Missa/missa_cantus.ly"
\include "Missa/missa_altus.ly"
\include "Missa/missa_tenor.ly"
\include "Missa/missa_bassus.ly"
\include "Missa/missa_quintus.ly"
\include "Missa/missa_sextus.ly"
\include "Missa/missa_continuo.ly"

missa = \markup {
  \score {
    <<
      \new StaffGroup = "missa_choral" <<
        \new Staff = "missa_cantus" {
          \override Staff.TimeSignature #'style = #'mensural
          \set Staff.InstrumentName = #"Cantus"
          \fughecantus
          \missacantus
        }
        \new Staff = "missa_altus" {
          \override Staff.TimeSignature #'style = #'mensural
          \set Staff.InstrumentName = #"Altus"
          \fughealtus
          \missaaltus
        }
        \new Staff = "missa_tenor" {
          \override Staff.TimeSignature #'style = #'mensural
          \set Staff.InstrumentName = #"Tenor"
          \fughetenor
          \missatenor
        }
        \new Staff = "missa_bassus" {
          \override Staff.TimeSignature #'style = #'mensural
          \set Staff.InstrumentName = #"Bassus"
          \fughebassus
          \missabassus
        }
        \new Staff = "missa_quintus" {
          \override Staff.TimeSignature #'style = #'mensural
          \set Staff.InstrumentName = #"Quintus"
          \fughequintus
          \missaquintus
        }
        \new Staff = "missa_sextus" {
          \override Staff.TimeSignature #'style = #'mensural
          \set Staff.InstrumentName = #"Sextus"
          \fughesextus
          \missasextus
        }
      >>
      \new Staff = "missa_continuo" {
        \override Staff.TimeSignature #'style = #'mensural
        \set Staff.InstrumentName = #"Bassus Generalis"
        \fughecontinuo
        \missacontinuo
      }
    >>
    \layout{
      \context {
        \Staff
        %\RemoveEmptyStaves
        %\override VerticalAxisGroup #'remove-first = ##t
      }
    }
  }
}