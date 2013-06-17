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
	\time 6/2
	\clef varbaritone
	\key f \major
	g1 bes2. c4 d2 g, a f a2. bes4 c2 a bes g bes2. c4 d2 g, a d, fis2. g4 a2 f g d'2. c8 bes a2 c a f
	c'2. bes8 a g2 d' bes g bes2. a8 g fis2 a fis2. g4 a2 fis g d'2. c8 bes a g2 bes a c2. bes4 a g f2 a g d'2. c4 bes a
	g2 bes a4 g fis e d e fis e d c d8 c bes a g4 d'' bes d4. c8 bes a g a bes c \clef alto d c bes a bes c d e
	f4 c a c4. bes8 a g f e f g a bes c d c4 a bes2 d1 bes g2 r a1 fis d2 r d'1 bes g2 r c1 a f2 r4 d'2 bes4. a8 bes c d4 bes2
	g4. a8 bes g a4 a2 fis4. e8 f g a4 fis4. e8 f g a4 fis g g2 a4 bes c d bes2 c4 d e f f,2 g4 a bes c a4. g8 a bes
	c4 a bes g2 a4 bes c d bes4. a8 bes c d4 e fis d2 e4 fis g a d,4. e8 fis g a4 fis
	g2 r4 d bes d4. c8 bes a bes a g a bes c d bes c2 r4 c a c4. bes8 a g a g f g a bes c a bes4 d2 bes g d' g d
	a2 fis d d' a d bes g d' bes g8 a bes c d e f4 f, f g a bes c a a bes c a bes g g a bes c d bes bes c
	d e fis d d e fis g a fis fis g a fis g g,8 a bes c d c bes a g f g a bes c d c bes a bes c d bes
	c bes a bes c d c bes a g f e f g a bes c bes a g a bes c a bes c d ees d c bes a g g' f e d c bes a
	g a bes a g f g e \clef varbaritone fis e d c d d' c bes a g a bes a g fis e d c d ees d c bes a g\breve
	\bar"||"
}
>>
