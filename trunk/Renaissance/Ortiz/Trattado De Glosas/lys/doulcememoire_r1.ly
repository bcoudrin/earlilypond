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
	d1 d4. e8 f e f g f2 c d4 e d c8 b a4 g a2 d,1 d'2. e4 f4. e8 d e f g a4 g f e8 d e4 f e2 a,1
	d4. e8 f e f g a g f e d c b a g2 g'2. f4 e d8 c d4 c d2 c2. d4 e f g e f g a2. g4 f e d2. c8 b
	a8 b c d e4 d c b a g8 f e2 e'4. f8 g f e d e2. d4 c b a8 b c b a g f e d1 d'4. e8 f e d e
	f4 e8 d c2 d4 d,4. e8 f g a b c b a g a4 r2 d f4. e8 d e f g a4. g8 f4 e8 f e2 e,
	a4. g8 a fis g a d,1 d'4. c8 d c b a g2 c2. d4 e d8 c d4 e f d e f g f e d c2 f,1 f'4. g8 a g f e
	d4 c d2 a e'4. d8 c4. b8 a b c d e4. f8 g f e d e2 e, a4 b c b a g f e d d'4. c8 b a g4 f g f8 e
	d4 a''4. g8 f e d4 c d2 c4. b8 a b c a b4 c c2 a e'2. d4 c b c4. d8 e4. f8 g4 f8 e d e f d
	e4. d8 c d e f g4 a g f8 g f4. e8 d4 f e d e2 a,4 g a2 d,4 d'4. e8 f g a g f e d4 c8 b
	a4 a'4. g8 f e d4. e8 f d e f g4 g, c2 d4. e8 f d e f g4. f8 e4 d c4. b8 a b c4 f,2 f'2. e4 d c8 b
	a4 g a2 d,1 d' c4 d e f g4. f8 e4 d8 c d4. e8 f4 d e f e2 a,4. b8 c4 b a g f e f4. g8 a4 g8 f g4. a8
	bes4 a8 g a4 g a2 d,1 a''2. g4 f e f2. e4 d c8 b a4 g a2 d,1 d' c2. d4 e f g e f4. e8 d e f d e4 f e d8 e
	a,4 b c b a g f e f4. g8 a4 f g4. a8 bes4 g a fis g a d,1 r2 d' g,2. f8 e d2 d' g,4. a8 bes4. a8 g4 fis g2 d\breve\fermata
	\bar"||"
}
>>
