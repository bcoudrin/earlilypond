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
	g4. f8 g f e d c4 d e d8 c d4 e d2 c g'4 a bes c d2 g,4. a8 bes c bes a g a bes a g a bes c
	d4. e8 f e d c d c bes c d c bes a bes a g f g a bes c bes a g f g a bes g a g a bes c d
	e8 f g4 g,8 a bes g bes c d4 d,8 e f d f g a g f g a f g a g4. a8 bes g bes c d c bes c
	d bes c d c4 c,8 d ees c e f g f e f g e f g f4. e8 d c bes a g4 g'4. f8 e d c4 c4. bes8 a g
	f4 f'4. e8 d c d e f d e4 c d d'4. e8 f e d c bes c d e f d ees d c bes c4 bes8 c d4 d8 bes c d c4
	bes4 a8 g f e d c bes a g a bes c d e f e d e f g a bes c4 c,4. bes8 c bes16 a g4 d''4. c8 d16 c bes a
	bes4 bes4. a8 bes a16 g f4 g4. f8 g f16 e d4 d4. c8 d16 d bes a g4 d''4. c8 bes a bes a g a bes g a bes
	c d ees d c bes a g a g f e d c bes a g4 d''4. c8 bes a bes a g f g a bes g a f g a g f e d
	c8 a bes c d bes c d g,4 g'4. a8 bes g a bes c a bes g a bes a4. g8 a bes c4 g4. f8 g a bes4 a g8 a bes a
	g8 f g f e d e f e4 d d'4. c8 a4 bes8 a g a bes a g f e4 c'4. bes8 g4 a8 g f g a g f e d4 f4. e8 f4
	d4 bes8 c d bes c d c4 g'4. f8 g4 e c8 d e f g e f4 a4. g8 a4 f d8 e f g a f g a bes a g f g4
	f8 g a g f e d c d c bes a bes4 bes'4 a4. g16 a g4 g a f g e
	f4. e8 d e f d e d c d e f e4 d8 e f e d c bes a g4 g'4. a8 bes4 a2 g4 g a4. f8 g4. e8
	f4 d4. e8 f d e f g f e d e4 d8 e f e d c d4 g, g'4. fis8 g16 f e f
	g8 f e d c4 c2 b8 a b! c d b! c d ees d c bes c4 g\breve
	\bar"||"
}
>>
