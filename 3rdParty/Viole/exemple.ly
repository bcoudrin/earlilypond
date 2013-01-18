\version "2.14.2"

\include "ornements-viole.ly"

\score {
	\new Staff {
		\relative f' {
			\clef alto
			\key f \major
			\time 4/4
			\partial 8
			f8 |
			\vplaintehoriz f4 \vmordant f32( e d c bes a g f)
				\clef bass
				<< { g4 \appoggiatura { a16[ g f g] } \vtrembl g8. f32 g |
						 <f a>4 }
				\\ { c4 s | <f, a c>4 } >>
			c''8( bes) a4 f |
			c a' \corde #4 g-3 a |
			\barre <bes-1 f>4 r \varpeg <bes, d f bes> r
		}
	}
}