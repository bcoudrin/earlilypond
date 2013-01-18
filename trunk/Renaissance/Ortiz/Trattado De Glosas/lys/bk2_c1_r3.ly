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
	g2. a4 bes c d2 g,,2. a4 bes c d2 d,2. e4 f g a2 a'2. bes4 c d e2 d2. e4 f g a2. g4 f e d2 g2. f4 e d c2 d2. c4
	bes4 a g2 a2. g4 f e d2 g2. f4 e d c2 d2. c4 bes a g2 a2. g4 f e d2 a'2 bes4 g2 f4 g8 a bes c d2 a'
	bes4 g2 fis4 g8 a bes c d2 d, ees4 c2 b4 c8 d e f g2 d' ees4 c2 b4 c8 d e f g4 g,4. a8 bes g
	a4 g2 fis4 g g,4. a8 bes g a4 g2 fis g4 d'4. e8 f d e4 d2 cis4 d d'4. e8 f d e4 d2 cis4
	d4 c8 bes a4 bes a f g f8 e d4 ees d bes c bes8 a g4 bes a f c'' bes8 a g4 bes a f
	g4 a d, ees d bes c \bar "" d g, g' f d e f bes, bes a f g a d, d'2 g, c f, f' bes, c4 d
	e4 f d4. e8 f g a4 g4. e8 fis4 g f8 e d4 g,4. a8 bes c d4 c4. a8 bes4 c bes8 a
	g4 g'4. a8 bes c d4 c4. a8 b4 c4 bes8 a g a bes g a g f e d c bes a g4 g'4. e8 fis4
	g4 f8 e d4 c4. a8 b4 c b8 a g\breve
	\bar"||"
}
>>
