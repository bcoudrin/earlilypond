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
\relative c {
	\time 4/2
	\clef bass
	d2. e4 f d f2. e8 d c2 d4 d,4. e8 f g a b c d e c d e f g a4. g8 f e d4. e8 f e f g
	a4. g8 f g a b c4. b8 a4 g8 f g4 e f g a,8 b c b a g f e d1 d'8 e f e d c b a g4 g'4. f8 e d
	c4 d e d8 c d4 e d2 c4 d e d c b a g f2 f'4 g a g f e d8 e f e d e f g a4 g8 f e d b c
	c4. b8 a b c d e4. f8 g f e d e f g f e d c b a4 a4. b8 c d e4 a,4. b8 c a d4 d4. e8 f g
	a4 d,4. e8 f d f4 e8 d c2 d4 d,4. e8 f g a4. b8 c d e c d4 d4. e8 f g a4 d,4. e8 f g a4. g8 f e f g
	a8 g f e d e f d e d c d e d c b a g f g a g f e d4 a''4. g8 f g a g f e d c b a
	g4 g'4. f8 e f g f e d c d e c d4 e d2 c8 d e f g f e d c d e d c b a g f4 f'2 g4
	a4 g f e d2. c8 b a b c d e4 d c b a g8 f e2 e'4. f8 g f e d e c d e a,4 b c b a g f e
	d4 d'4. c8 b a g4 g'2 f8 e d4 a'4. g8 f e d4 f2 e8 d c4 b a2 b4 c b2 a4 a'2 g8 f e4 a2 g8 f e4 g4. f8 e d
	e4 c d2 e4. d8 c d e f g f g a g4 f8 g f e d c d e f d e4 f e2 a2. g4 f e d c8 b a2 a'2. g4
	a8 g f e d4. e8 \times 2/3 {f4 e f} g4. f8 e4 d8 c d4 c d2 c4. d8 e4. d8 c4 b a g f2 f'2. e4 d c8 b a4 a'4. g8
	a16 g f e f4 a4. g8 a16 g f e d4 f4. e8 d4 c g'4. f8 e d e4 g4. f8 e4 d4. e8 f4 d e2. d4 c b a g
	f4. g8 a g f e f4. g8 a g a f g4. a8 bes a b g a4. g8 a f g a d,4 a''2 g4 f a4. g8 f e f4 a2 g4 f e
	d c8 b a4 g a a'2 g4 f a4. g8 f e d c d4 c2 r4 g'4. f8 e d e2 f4 d4. e8 f4 e2. d4 c b a g f e f2. g4
	a4 f g4. a8 bes g a b a b c b a g f e d4 d' f4. e8 d c bes c d c b a g4 f g f8 e d4 d'4. c8
	b8 a g4 f g1 g4 e d\breve
	\bar"||"
}
>>
