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
	%\remove "Time_signature_engraver"
}
\relative c' {
	\time 2/2
	\clef varbaritone
	\key d \minor
	g2 f4 g c,8 d e f g4 e d2 c4 d g,8 a bes c d4 bes a2 g4 a d,8 e f g a4 f e2 d4 a'' g a d,8 e f g
	a4 f e2 d4 d' c d g,8 a bes c d4 bes a2 g4 g' fis g c,8 d e f g4 e f8 e d c d4 c8 bes a g f e
	d8 c bes a g a bes c d e f d e d c bes a g a bes c a bes c d c bes a g a bes g a g f g a f g a
	d,2 d'4. e8 f g a bes c d e f g4 g,8 a bes c d e f4 f,8 g a bes c4 c,4. d8 e f g4 g,4. a8 bes c d bes
	c8 bes a g f e d4 \time 6/4 d'4 e f g a bes c bes a g a bes c d e f e f d c bes a g a bes c d g, a bes
	\time 2/2 a4 g8 f e d c bes a bes c d c bes a g f4 c''4. bes8 c16 bes a g a4 d4. c8 d16 c bes a bes4 g4. f8 g16 f e d
	c4 d4. c8 d16 c bes a bes4 bes'4. a8 bes16 a g f g8 f g16 f e d e8. f16 g f e d c8 d e f g a bes c
	d8 c bes a g a bes g a g fis e fis g e fis g f e d c b c4 g\breve\fermata	
	\bar"||"
}
>>
