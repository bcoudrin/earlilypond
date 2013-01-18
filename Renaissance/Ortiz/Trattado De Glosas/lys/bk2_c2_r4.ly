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
	\time 2/1
	\clef bass
	\key d \minor
	d\breve a g bes a g bes c d f e d f g c, d c g' f g c, bes ees d g, a c d f e d c bes a g a g\longa \bar"||"
}
>>
<<
\new Staff \with {
%	\remove "Time_signature_engraver"
}
\relative c' {
	\clef tenor
	\key d \minor
	a4 f4. g8 a4 d,4. e8 f g a4 e' c4. d8 e4 a,4. bes8 c d e fis g4 d bes4. c8 d4 g,4. a8 bes c d4 f d4. e8
	f4 bes,4. c8 d e f4 e8 d e d c bes a g fis e f g e f g4 g bes4. c8 d4 g,4 bes4. c8 d4 bes d4. e8 f4 bes,8 c d e f d
	e4 c e4. f8 g4 c,8 d e f g e f4 d4. c8 bes4 a f4. g8 a bes a4 f'4. e8 d4 c a4. bes8 c bes16 a g4 g'4. f8 e d
	e4 g4. f8 g e f4 f4. e8 d c d4 f4. e8 d c16 bes a4 c4. bes8 a g a4 c4. bes8 c a bes4 d4. c8 bes a bes4. a8 bes c d bes
	c4 g'4. f8 g4 e c e2 d4 a'4. g8 a4 f d f2 e4 g4. f8 g4 e c e2 d4 d4. c8 d4 bes g bes2 a4. bes8 c d
	c4. bes8 a g a bes c a bes c d4. c8 bes a g4 g'4. f8 d4 f4 g4. f8 e d e4 c4. bes8 g a bes4 d4. c8 bes a
	bes4 bes4. a8 f4 g bes4. a8 g f g4 bes4. a8 g4 f f'4. e8 d c d4 d4. c8 a4 bes4 d4. c8 bes a bes4 d4. c8 bes4 a c4. bes8 a g
	a4 a'4. g8 f e16 d e4 g4. f8 e d e4 g4. f8 e4 d f4. e8 d c d4 d4. c8 bes a16 g a4 c4. bes8 a g a4 c4. bes8 a4
	g4 g'4. f8 e d e4. d8 e f g e f4 a,4. g8 f e f4. e8 f g a f g4 g'4. f8 e d e4. d8 e f g e f4 d4. c8 bes a
	bes4. a8 bes c d bes c4 c4. bes8 a g a4. g8 a bes c a bes4 d4. c8 bes a bes4. a8 bes c d bes c4 c4. bes8 a g
	a4. g8 a bes c a b\longa
	\bar"||"
}
>>
