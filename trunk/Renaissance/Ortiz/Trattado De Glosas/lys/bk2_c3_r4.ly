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
				\repeat volta 2 {r2 fis2 fis fis fis1 fis2 g1 g2 a1 a2 bes1 bes2 a1 a2 g1 g2 fis1
								 r2 fis2 g a bes1 a g fis r2 fis g a bes a2. g4 g2. fis4 fis2 g1}
			}
		}
	>>
	\new Staff = "altus" <<
		\set Staff.instrumentName = #"Altus"
		\new Voice = "altus" {
			\relative c' {
				\key f \major
				\time 6/2
				\clef mezzosoprano
				\repeat volta 2 {r2 d d d d1 d2 d1 d2 f1 f2 f1 f2 f1 f2 d1 d2 d1
								 r2 d d f f1 f d d r2 d d f f f d eis d1 d}
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
				\repeat volta 2 {r2 a a a a1 a2 bes1 bes2 c1 c2 d1 d2 c1 c2 bes1 bes2 a1
								 r2 a bes c d1 c bes a r2 a bes c d c bes c a1 g}
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
				\repeat volta 2 {r2 d d d d1 d2 g1 g2 f1 f2 bes,1 bes2 f'1 f2 g1 g2 d1
								 r2 d g f bes,1 f' g d r2 d g f bes, f' g c, d1 g,}
			}
		}
	>>
>>

<<
\new Staff \with {
	%\remove "Time_signature_engraver"
}
\relative c {
	\time 9/2
	\key f \major
	\clef varbaritone
	d2 a'2. g4 fis e f4. g8 a4 a d4. c8 bes a bes4. c8 d2 a4 c4. bes8 a g a4. g8 f4 e d c bes a8 g f4 c''4. bes8 a g
	\clef alto
	a8 bes c a bes4 g4. a8 bes c d4 e fis2 r4 a,4. g8 fis e f g a f g a bes g a bes c a bes4 c d e f g a bes a,
	bes2. c4 d e fis2. g4 a f g g, a8 bes c a bes a f g a bes c a bes4 d e8 f g e f4 d2 a4 bis c d bes d2. c8 bes
	a4 g fis e d8 e fis g \clef varbaritone a g fis e d c bes a g4 d''2 bes g4 a f4. g8 a bes c4 a \clef alto bes f'2 d bes4
	
	\bar"||"
}
>>