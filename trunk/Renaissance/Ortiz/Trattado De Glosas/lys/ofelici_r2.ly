\version "2.12.3"

#(set-global-staff-size 15)
\paper { indent = #0 }
\layout {
	\context {
		\Score
		\override SpacingSpanner #'uniform-stretching = ##t
	}
}
<<
\new Staff \with {
	\remove "Time_signature_engraver"
}
\relative c'' {
	\time 2/1
	\clef soprano
	\key d \minor
	r\breve r1 g1 d'2 d d4. c8 d c bes a
	bes2 g4 a
	bes4 c8 bes c bes a g
	a4 bes a2
	g4 a bes c
	bes4 a g f8 g
	a8 g fis e g4 f
	g2 g d' d
	d8 e f e d c bes a
	bes2 g4 a
	bes c d bes
	c8 d ees d c bes a g
	a4 bes g a fis g4. f8 f4 g\breve r\breve r2 bes2. c4 d bes c2. bes4
	bes4 a8 g a bes g a
	bes2 d2 d4. c8 d bes c d
	c4. d8 ees d c d
	e4. d8 e c d e
	d2 d d d c4. bes8 bes4 a8 g
	a4 bes8 c d2. c4 bes a
	g4. a8 bes g a bes
	a8 bes c bes c bes a g
	fis4 g4. f16 e f4 g1 r2 g2 a4 g8 a bes g a bes
	c4. bes8 a bes g a
	bes4 g8 a bes c d bes
	c2 d cis4 d4. c8 d16 c bes c
	d2 d c a
	bes4 c8 bes c bes a g
	a4 bes a2
	g2 g g4. f8 g e f g
	f4. g8 a g f e
	d4. e8 f e f g
	f4. e8 d e f4
	e4. f8 g f e d
	e8 d e f e d e4
	d8 e f e d e f g
	a4 bes c d
	c bes bes a8 g
	a4 bes2 a4
	bes2 r4 d4 c a bes bes a g8 f g a g4
	f4. e8 d4 f
	e8 f g f e d e4
	d1 d2 r4 d'4 c a bes8 a g bes a2 g
	f4 g8 f g f e d
	e4 d e2
	d2 d'2. c4 bes a bes a g2. f8 e d e f d
	e4 f e2 d\breve\fermata
	\bar"||"
}
>>
