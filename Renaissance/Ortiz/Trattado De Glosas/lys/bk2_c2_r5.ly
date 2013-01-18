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
	d\breve a g bes a g bes c d f e d f g c, d c g' f g c, bes ees d g, a c d f e d c bes a g a g\fermata \bar"||"
}
>>
<<
\new Staff \with {
%	\remove "Time_signature_engraver"
}
\relative c {
	\clef tenor
	\key d \minor
	d4. e8 f g a bes c4 c,4. d8 e f g a bes c d4 d,2 e4 f g a4. bes8 c d e f g4 g,4. a8 bes c
	d8 e f e d c d4 e8 f g f e d c bes a g f e d e f g a4. g8 a bes c d
	e8 f g4. f8 g e f4 f,4. g8 a4. g8 f e d c bes a g4 bes'4. c8 d bes c d ees d c bes a g
	f4 f'4. g8 a f g4. f8 e d e4 d bes4. c8 d bes c4. bes8 a g a4 g8 a bes c d4 d e c4. d8 e c
	d4 f4. e8 d c bes a g4 r g a f4. g8 a f g4 bes4. a8 g f e d c4 e c4. d8 e f g4 e
	f2 a4 f4. g8 a bes c4 a g g'2 e4 f d4. e8 f d e4 g2 e4 f d4. e8 f d
	e4 c2 a4 bes g4. a8 bes4 a g4. fis16 e f4 g\longa
	\bar"||"
}
>>
