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
			\relative c'' {
				\time 6/2
				\clef soprano
				\repeat volta 2 {a2 a a bes1 bes2 a1 a2 g1 g2 a a a bes1 bes2 a g f f1 e2 f1}
			}
		}
	>>
	\new Staff = "altus" <<
		\set Staff.instrumentName = #"Altus"
		\new Voice = "altus" {
			\relative c' {
				\time 6/2
				\clef mezzosoprano
				\repeat volta 2 {f2 f f f1 f2 f1 f2 e1 e2 f f f f1 f2 f e d d c1 c}
			}
		}
	>>
	\new Staff = "tenor" <<
		\set Staff.instrumentName = #"Tenor"
			\new Voice = "tenor" {
			\relative c' {
				\time 6/2
				\clef alto
				\repeat volta 2 {c2 c c d1 d2 c1 c2 c1 c2 c c c d1 d2 c c a bes g1 f}
			}
		}
	>>
	\new Staff = "bassus" <<
		\set Staff.instrumentName = #"Bassus"
		\new Voice = "bassus" {
			\relative c {
				\time 6/2
				\clef bass
				\repeat volta 2 {f2 f f bes,1 bes2 f'1 f2 c1 c2 f f f bes,1 bes2 f' c d bes c1 f,}
			}
		}
	>>
>>

<<
\new Staff \with {
	%\remove "Time_signature_engraver"
}
\relative c' {
	\time 9/2
	\clef varbaritone
	\bar"||"
}
>>
