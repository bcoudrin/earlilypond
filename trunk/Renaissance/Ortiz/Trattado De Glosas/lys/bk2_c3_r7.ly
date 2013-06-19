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
				\time 6/1
				\clef soprano
				\repeat volta 2 {bes1. bes a a g g fis fis bes bes a a g g1 fis2 g1. g} e2. d4 e f g1 fis2 g1. g g\longa
			}
		}
	>>
	\new Staff = "altus" <<
		\set Staff.instrumentName = #"Altus"
		\new Voice = "altus" {
			\relative c' {
				\key f \major
				\time 6/1
				\clef alto
				\repeat volta 2 {f1. f f f d d d d f f f f d1 d2 e d1 d1. d} c1 c2 e d1 d1. d d\longa
			}
		}
	>>
	\new Staff = "tenor" <<
		\set Staff.instrumentName = #"Tenor"
			\new Voice = "tenor" {
			\relative c' {
				\key f \major
				\time 6/1
				\clef alto
				\repeat volta 2 {d1. d c c bes bes a a d d c c bes1 bes2 c a1 g1. g} g1 g2 c a1 g1. g g\longa
			}
		}
	>>
	\new Staff = "bassus" <<
		\set Staff.instrumentName = #"Bassus"
		\new Voice = "bassus" {
			\relative c {
				\key f \major
				\time 6/1
				\clef bass
				\repeat volta 2 {bes1. bes f' f g g d d bes bes f' f g1 g2 c, d1 g,1. g} c1 c2 c d1 g,1. g g\longa
			}
		}
	>>
>>

<<
\new Staff \with {
	\remove "Time_signature_engraver"
}
\relative c' {
	\time 3/1
	\clef tenor
	\key d \minor
	bes2. c4 d bes f' e d c bes2 a2. bes4 c a c bes a g a2 bes2. c4 d bes d c bes a bes2 a fis4 g a2 fis a2. g4 f e
	\clef varbaritone d c bes2 bes'2. c4 d bes c bes a g f2 a2. bes4 c a bes2. c4 d bes c bes a g fis e d c bes a g2 g' g g
	\clef alto f2 c' c c a d d d bis g' g g e c c c a a d d bis g' g g f2. e4 d c bes bes d c2. bes4
	a4 g a bes c bes c a bes2. c4 d c bes a g a bes g a2 fis g a g \clef varbaritone fis e fis g a2 bes bes,4 c d c
	bes4 c d e f g a2 a4 bes c bes a g a bes c a bes2 bes4 c d bes c bes a g fis e d c bis a g2
	\clef alto d'2 d g e g g c a a d1 bis2 d d g g e c c a a d1 bis2 d d g
	f4 e d e f e d c bes c d bes c bes a g a2 f' f f d4 c bes c d c bes a g a bes g a g fis e fis2 a
	a2 a d2. c4 bes a bes c d e f g a2 a, a c4 bes a g a2 d4 c bes a bes2 c4 bes a g a2 d c bis a bes2
	\clef varbaritone d,4 c bis a bes2 g'4 f e d e2 c'4 bes a g a2 bis4 a g a bes c d c bes a g f \clef alto e2 g'4 f e d
	c4 bes a g fis e \clef varbaritone d c d c bis a g\breve
	\bar"||"
}
>>
