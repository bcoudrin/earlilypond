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
				\key f \major
				\time 6/2
				\clef soprano
				\repeat volta 2 {bes1. bes2 bes1 bes1. bes2 bes1 g1. bes2 a1 bes1. bes2 bes1 bes1. bes2 bes1 a1. a2 a1 g g1. fis2 g1. g2 g1} g\longa
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
				\repeat volta 2 {f1. f2 f1 f1. f2 f1 ees1. d2 f1 f1. f2 f1 f1. f2 f1 f1. f2 f1 d1. eis2 d1 d1. d2 d1} d\longa
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
				\repeat volta 2 {d1. d2 d1 d1. d2 d1 bes1. bes2 c1 bes1. bes2 bes1 d1. d2 d1 c1. c2 c1 bes1. c2 a1 g1. g2 g1} g\longa
			}
		}
	>>
	\new Staff = "bassus" <<
		\set Staff.instrumentName = #"Bassus"
		\new Voice = "bassus" {
			\relative c {
				\key f \major
				\time 6/2
				\clef bass
				\repeat volta 2 {bes1. bes2 bes1 bes1. bes2 bes1 ees1. g2 f1 bes,1. bes2 bes1 bes1. bes2 bes1 f'1. f2 f1 g1. c,2 d1 g,1. g2 g1} g\longa
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
	\clef varbaritone
	\key d \minor
	a
	\bar"||"
}
>>
