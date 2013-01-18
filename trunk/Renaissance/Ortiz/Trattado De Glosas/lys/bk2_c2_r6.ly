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
	a4 f4. e8 f g a4. bes8 c4 a bes2 d4 bes4. a8 bes c d e f g a4 g4. fis8 f4 g2 d4 bes4. a8 bes c d e f d e f g f
	e8 d c bes a g f e d e f g a bes c4 a8 bes c d e f g f e d e d16 e f4 d4. c8 bes a16 g a8 g f e
	d8 c bes a g4 d''4. c8 bes a g4 c4. bes8 c16 bes a g f4 f' d8 e f d e d c bes c d e c d4 bes4. c8 d bes
	c8 bes a g a bes c a bes4 g'4. f8 d4 e c4. bes8 g a bes c d4. c8 bes a g a bes c bes c16 bes c bes a g
	f8 e f g a g a f g4 d' bes d2 c8 bes a bes c4 g g'e g2 f8 e d e f4 c c a c2 bes8 a g4. a8
	bes4 a8 g f g a bes c d e f g4 e d d,4. e8 f g a4. bes8 c d e f g4 g,8 a bes c d e
	fis4 g4. f8 g16 f e f g\breve
	\bar"||"
}
>>
