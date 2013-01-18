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
\relative c' {
	\time 2/2
	\clef varbaritone
	\key d \minor
	g4. a8 bes4 g
	bes4. a8 g4 f8 e
	d4 d4. e8 f d
	f4. e8 d c bes a
	g4 g'2 fis4
	g4 bes4. a8 g f16 e
	d4 c2 b4 c ees4. d8 c bes16 a
	g4 g'2 f8 e
	f8 g a f g f e d
	c4 bes8 a bes c d bes
	c8 bes a g f4
	c''2 bes8 a bes c d bes
	c8 bes a g f e d c
	bes4 bes'8 c d c bes a
	g8 f e d c bes a g
	f4 f'8 e d c bes a g4 g'4. f8 e d
	c4 f4. e8 d c
	bes4 d'4. c8 bes a g4 g'4. f8 e d c bes a g f e d c
	bes8 a g a bes c d bes c bes a g f4 c''
	a4 c4. bes a g
	f4 g e g4. f e d c4 f d f4. e d c bes4 d'4
	bes4 d4. c bes a g a bes g a g f e d c bes a g4 g'4. fis8 g16 fis e fis
	g4 f8 e d c bes a g4 d''4. cis8 d16 cis bes cis
	d4 c8 bes a g f e d4 g2 fis4
	g4 d f g
	e2 d4 d'2 cis4 d a
	c4 d bes2
	a8 bes c bes a g f4
	bes4. a8 g f e d
	c8 d ees c d bes c d
	g,4 bes4. a8 bes c
	d4 g, g' bes4. a8 bes c d4 g,
	d4 f4. e8 f g
	a4 d, g, bes4. a8 bes c d4 g,
	c4 ees4. d8 ees f
	g4 c,4. b8 bes4
	c4 g'4. f8 fis4
	g4 f8 e d c bes a g\breve\fermata \bar"||"
}
>>
