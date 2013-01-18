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
	\time 4/2
	\clef varbaritone
	\key d \minor
	r\longa r\breve g1 d'4. e8 f4 e d c bes a bes4. a8 g f g a bes4 c8 bes c bes a g a4 bes a2 g4. f8 g e f g d1
	d2 d ees4. d8 c d e f g a bes a g f e d c1 c4. d8 ees d e c d4 b c d g,2 c1 c4 d8 e f e f g
	f4 e d c8 bes c2 bes bes'4. c8 d c bes c d e f d ees2. bes4 d c8 bes c a bes c bes2 bes, bes bes4 a8 g f2 f'4 e8 d
	c4 d e f g a bes c \clef alto d e f g a2 g f4 e d c \clef varbaritone bes a g f ees8 d e f g f e d
	c8 bes c d e c d e d c b c d b c d g,1 r2 g'2 f4 e8 f g f e d c d ees c d c bes a g2 g'
	a2 bes4 c8 bes c bes a g a bes c a bes a g a bes c d bes c2 d d c d d,4 e8 f g a bes a g f e d
	c4. d8 ees4 c d e f g f e d c bes4. c8 d c bes a bes4. a bes c d bes c1 c d4. c8 bes c d e
	f8 e d e f g a f g2 ees2 f4. e8 f d e f bes,2 r4 bes'4 a a g g f d ees c d4. c8 bes4 a8 bes
	c4. bes8 c a bes c d e f e d c bes a g2 bes' a g f4 d ees c d8 c bes a bes c d bes c2. bes8 c
	d8 e f e d c d4 g, g'4. a8 bes a g f e d c1 b2 c1 g\breve
	\bar"||"
}
>>
