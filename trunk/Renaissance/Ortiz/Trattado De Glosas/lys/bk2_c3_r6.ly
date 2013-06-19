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
\relative c {
	\time 2/2
	\clef tenor
	\key d \minor
	f2 d2. e4 f2 bes, f''1 d2. e4 f2 bes, bes1 g2. a4 bes2 a f1 d2. e4 f2 bes, f''1 d2. e4 f2 bes, d c c1 a2. bes4 c2 bes d1 c4 bes
	a2 d1 bis2. c4 d2 g, d'2. c4 bes a8 g f4 e f8 e d c bes2 d'2. c4 bes a8 g f4 e d c \clef bass bes a bes8 a g f e4
	\clef tenor bes''2 g4. f8 g a bes4 g a4. g8 f4 e d c bes2 r4 f''2 d4. c8 d e f4. e8 d4 c bes2 r4 d2 bes4. a8 bes c d4 bes c4. bes8 a4 g
	f4 c'2 a4. g8 a bes c4 a bes2. a4 g f e2 d4 d'2 c4 bis a g \clef varbaritone d2 c4 bis a g2 d''2. c4 bes a8 g f4 e d c
	\clef tenor bes2 f''2. e4 d c bes2 d2. c4 bes a g f ees f g a bes g a8 bes c bes a g f e d4 d'2 bes4. a8 bes c d4 bes f'4. e8 d c
	bes4 r d,2 bes4. a8 bes c d4 bes f'4. e8 d c bes4 r c'2 a4. g8 a bes c4 a c4. bes8 a g a4 d bes4. a8 bes c d4 bes c4. bes8 a g a4
	\clef varbaritone r4 d,2 bis4. a8 b c d4 bis d4. c8 bes a g4 d'' bis4. a8 bes c d4 bis d4. c8 bes a g2 f8 e d c bis a g\longa
	\bar"||"
}
>>
