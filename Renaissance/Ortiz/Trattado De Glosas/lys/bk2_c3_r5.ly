\version "2.12.3"

#(set-global-staff-size 15)
\paper { indent = #0 }
\layout {
	\context {
		\Score
		\override SpacingSpanner #'uniform-stretching = ##t
	}
}

\new ChoirStaff <<
	\new Staff = "cantus" <<
		\set Staff.instrumentName = #"Cantus"
		\new Voice = "cantus" {
			\relative c' {
				\key f \major
				\time 6/2
				\clef soprano
				\repeat volta 2 {g'\breve g1 a\breve a1 g\breve g1 fis\breve fis1}
			}
		}
	>>
	\new Staff = "altus" <<
		\set Staff.instrumentName = #"Altus"
		\new Voice = "altus" {
			\relative c' {
				\key f \major
				\time 6/2
				\clef alto
				\repeat volta 2 {d\breve d1 f\breve f1 d\breve d1 d\breve d1}
			}
		}
	>>
	\new Staff = "tenor" <<
		\set Staff.instrumentName = #"Tenor"
			\new Voice = "tenor" {
			\relative c' {
				\key f \major
				\time 6/2
				\clef alto
				\repeat volta 2 {bes\breve bes1 c\breve c1 bes\breve bes1 a\breve a1}
			}
		}
	>>
	\new Staff = "bassus" <<
		\set Staff.instrumentName = #"Bassus"
		\new Voice = "bassus" {
			\relative c {
				\key f \major
				\time 6/2
				\clef varbaritone
				\repeat volta 2 {g'\breve g1 f\breve f1 g\breve g1 d\breve d1}
			}
		}
	>>
>>

<<
\new Staff \with {
	\remove "Time_signature_engraver"
}
\relative c' {
	\time 2/2
	\clef alto
	\key f \major
	g'2 r4
	\bar"||"
}
>>
