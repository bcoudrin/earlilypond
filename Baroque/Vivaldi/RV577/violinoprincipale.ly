%% violinoprincipale.ly
%%  This file is part of the Earlilypond project
%%  
%%  Copyright (c) 2013-2015 Benjamin Coudrin <benjamin.coudrin@gmail.com>
%%                All Rights Reserved
%%
%%  This program is free software. It comes without any warranty, to
%%  the extent permitted by applicable law. You can redistribute it
%%  and/or modify it under the terms of the Do What The Fuck You Want
%%  To Public License, Version 2, as published by Sam Hocevar. See
%%  http://sam.zoy.org/wtfpl/COPYING for more details.

%% Allegro %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
violinoprincipalefirst = \relative c''' {
  \set Score.skipBars = ##t
  \time 4/4
  \key g \minor
  \clef treble
  g8 d4 d8 g d4 d8
  g d bes' g a d,4 c8~
  c bes4 a g fis8 
  g d bes g g'' d4 d8 
  g d4 d8 g d bes' g 
  a4 r4 r2
  r2 r8g8 g g 
  r1
  r8 g8 g g r2
  r2 r8 fis8 fis fis 
  c16 d, c' d, c' d, c' d, bes' [d, bes' d, bes' d, bes' d,]
  a' [d, a' d, a' d, a' d,] g [d g d g d g d]
  fis [d fis d fis d fis d] g4 r8 g'16 f 
  ees8 d16 c d8 d, c'4. g'16 f 
  ees8 d16 c d8 d, g4\fermata r4
  R1*4
  r2 bes'16 c c a a g g ees 
  ees c c ees ees g g a a c c a a f f d 
  d bes bes d d f f g g bes bes g g e e cis 
  cis a a cis cis e e f f8 a8 ~ a16 c, bes a 
  bes8 bes'8 ~ bes16 d, c b cis8 cis'8 ~ cis16 a b cis 
  d8 (bes a gis) a (cis b a) 
  d (bes a gis) a ([b16 cis d8) d,] 
  e4.\trill d8 d a4 a8 
  d a4 a8 d a f' d 
  e a4 g f e8 ~
  e d4 cis8 d a f d 
  d' a4 a8 d a4 a8 
  d a f' d e4 r4
  r1
  r8 a a a r2
  r2 r8 g g g 
  r1
  r8 e e e g16 [a, g' a, g' a, g' a,] 
  f' [a, f' a, f' a, f' a,] e' [a, e' a, e' a, e' a,]
  d [a d a d a d a] cis [a cis a cis a cis a]
  d4 r8 d,16 c bes8 a16 g a8 a 
  g4. d'16 c bes8 a16 g a8 a 
  | % 42
  d'16^\markup\italic{Solo} d' a f d d' a f d8 f a d 
  d,16 d' a f d d' a f d8 f a d 
  g,,16 g' d bes g g' d bes g8 bes d g 
  g,16 g' d bes g g' d bes g8 bes d g 
  c,16 c' g e c c' g e c8 e g c 
  c,16 c' a e c c' a e c8 e g c 
  f,,16 f' c a f f' c a f8 a c f 
  f,16 f' c a f f' c a f8 a c f 
  bes,16 bes' f d bes bes' f d bes8 d f bes 
  bes,16 bes' f d bes bes' f d bes8 d f bes 
  a,16 f a f bes f bes f c' f, c' f, d' f, d' f, 
  ees' f, ees' f, d' f, d' f, c' f, c' f, bes f bes f 
  a4 \omit TupletNumber \times 8/7 {bes32 c d ees f g a} bes16 [bes bes bes bes bes bes bes]
  c, [c c c c c c c] a' [a a a a a a a]
  bes, [bes bes bes bes bes bes bes] g' [g g g g g g g]
  c, c c c d d d d ees ees ees ees d d d d 
  c c c c d d d d ees ees ees ees d d d d 
  c c c c c c c c bes4 r4
  R1*9
  c8 g4 g8 c g4 g8 
  c g ees' c d g4 f8 ~
  f ees4 d c b8 
  c g ees c g'' d4 d8 
  g d4 d8 g d bes' g 
  a d,4 c8~c bes4 a8~
  a g4 fis8 g d bes g 
  g''4.^\markup\italic{Solo} bes16 (a) g (fis) g4 bes16 (a) 
  g (fis) g4 a16 (bes) a (g) fis (e) d (c) bes (a) 
  bes8 g g,4 bes''16 a bes4 c16 d 
  ees, (d) ees4 f16 (ees) a (g) a4 bes16 (c) 
  d, (c) d4 ees16 (d) g (fis) g4 a16 (bes) 
  c, b c4 d16 c <<{\stemDown <d, a'>4} \\ {\stemUp fis'16 fis fis fis}>> <<{\stemDown <d, bes'>4} \\ {\stemUp g'16 g g g}>> 
  <<{\stemDown <d, c'>4} \\ {\stemUp a''16 a a a}>> <<{\stemDown <d,, d'>4} \\ {\stemUp bes''16 bes bes bes}>>
  <<{\stemDown <d,, c'>4} \\ {\stemUp a''16 a a a}>> <<{\stemDown <d,, bes'>4} \\ {\stemUp g'16 g g g}>> 
  <<{\stemDown <d, a'>4} \\ {\stemUp fis'16 fis fis fis}>> <<{\stemDown <d, bes'>4} \\ {\stemUp g'16 g g g}>>
  <<{\stemDown <d, c'>4} \\ {\stemUp a''16 a a a}>> <<{\stemDown <d,, d'>4} \\ {\stemUp bes''16 bes bes bes}>> 
  <<{\stemDown <d,, c'>4} \\ {\stemUp a''16 a a a}>> <<{\stemDown <d,, bes'>4} \\ {\stemUp g'16 g g g}>> <fis a, d, >4 r8 bes^\markup\italic{dolce} 
  a bes c d fis, (e d bes') 
  a (bes c d) fis, (e d bes')
  a (bes c d) ees2~
  ees8 c (bes a) bes (ees, d cis) 
  d (bes' a g) fis4. g8^\markup\italic{Spirituoso} 
  g [f16 ees d c bes a] bes8 [g' d, fis'] 
  g4 
}

%% Largo non molto %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
violinoprincipalesecond = \relative c'' {
  \set Score.skipBars = ##t
  \time 3/4
  \key g \minor
  \clef treble
  c4 ~ c8. [ees32 (d] c4)
  c2\trill b4 
  f'4 ~ f8. aes32 (g f4)
  f2\trill ees4 
  g4 ~ g8. bes32 (aes g4)
  c c, aes' 
  fis2 ~ fis8. g16 
  g2.
  e4 ~ e8. bes'32 (aes g4) 
  aes (g) f 
  d4 ~ d8. aes'32 (g f4)
  g (f) ees 
  c4 ~ c8. ees32 (d c4)
  c2\trill b4 
  f'4 ~ f8. aes32 (g f4)
  f\trill ees g 
  aes b,2\trill 
  \grace b8 (c2.\fermata)
}

%% Allegro %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
violinoprincipalethird = \relative c''' {
  \set Score.skipBars = ##t
  \time 3/4
  \key g \minor
  \clef treble
  \override Beam.auto-knee-gap = #2
  bes8 [g,,16 g g8 g'' bes g]
  bes [g,,16 g g8 g'' bes g]
  a [d,,16 d d8 fis' a fis]
  a [d,,16 d d8 fis' a fis]
  bes [g,,16 g g8 g'' bes g]
  a4 r r
  b2. 
  bes 
  a ~
  a
  g ~
  g
  fis2. 
  g4 r r 
  g8 [f16 ees d8 c bes a]
  g [f16 ees d8 c bes a]
  g4\fermata r r
  g''4 a fis 
  \omit TupletNumber \times 2/3 {g8 (a bes)} \times 2/3 {bes (a g)} \times 2/3{g (a bes)} 
  \times 2/3 {a bes c} \times 2/3 {c bes a} \times 2/3 {a bes c}
  \times 2/3 {bes c d} \times 2/3 {d c bes} \times 2/3 {bes c d}
  \times 2/3 {c d ees} \times 2/3 {ees d c} \times 2/3 {c d ees}
  \times 2/3 {d c bes} \times 2/3 {d c bes} \times 2/3 {d c bes}
  \times 2/3 {c bes a} \times 2/3 {c bes a} \times 2/3 {c bes a}
  \times 2/3 {d c bes} \times 2/3 {d c bes} \times 2/3 {d c bes}
  \times 2/3 {c bes a} \times 2/3 {c bes a} \times 2/3 {c bes a}
  bes4 r r 
  \times 2/3 {f8 b d} \times 2/3 {d c b} \times 2/3 {d c b} 
  \times 2/3 {c (ees,) c'} \times 2/3 {c (ees,) c'} \times 2/3 {c (ees,) c'}
  \times 2/3 {ees, a c} \times 2/3 {c bes a} \times 2/3 {c bes a}
  \times 2/3 {bes d, bes'} \times 2/3 {bes d, bes'} \times 2/3 {bes d, bes'}
  \times 2/3 {d, g bes} \times 2/3 {bes a g} \times 2/3 {bes a g}
  \times 2/3 {a c, a'} \times 2/3 {a c, a'} \times 2/3 {a c, a'}
  \times 2/3 {c, fis a} \times 2/3 {a g fis} \times 2/3 {a g fis}
  \times 2/3 {g bes, g'} \times 2/3 {g bes, g'} \times 2/3 {g bes, g'}
  \times 2/3 {cis, a cis} \times 2/3 {cis a cis} \times 2/3 {cis a cis}
  \times 2/3 {d e f} \times 2/3 {f g a} \times 2/3 {f e d}
  \times 2/3 {cis a cis} \times 2/3 {cis a cis} \times 2/3 {cis a cis}
  \times 2/3 {d e f} \times 2/3 {f g a} \times 2/3 {f e d}
  \times 2/3 {bes' a g} \times 2/3 {f e d} \times 2/3 {a b cis}
  f8 [d,16 d d8 f' a f]
  e [a,,16 a a8 e'' g e]
  f [d,16 d d8 f' a f]
  e4 r r
  fis2. 
  f 
  e 
  f 
  e 
  e 
  f4 r r
  R2.*7
  a16 (g) f (e) f (e) d (cis) d (cis) bes (a) 
  bes8 g16 (a bes8) bes16 (c d8) g16 (a) 
  bes (a) g (f) g (f) e (d) e (d) cis (b) 
  cis8 a16 (b cis8) cis16 (d e8) f16 (g) 
  a (g) f (e) f (e) d (c) d (c) bes (a) 
  bes (a) g (f) g (f) e (d) e (d) c (bes) 
  c8-! e-! g-! c-! e-! g-! 
  a, f16 (g a8) a16 (bes c8) d16 (ees) 
  f (ees) d (c) d (c) bes (a) bes (a) g (f) 
  g8 g16 (a bes8) bes16 (c d8) ees16 (f) 
  g f ees d ees d c bes c bes a g 
  a8 a16 (bes c8) c16 (d ees8) f16 (g) 
  a (g) f (ees) f (ees) d (c) d (c) bes (a) 
  bes8 bes16 (c d8) d16 (ees f8) g16 (a) 
  bes (a) g (f) g (f) ees (d) ees (d) c (bes)
  a (f ees f) a (f ees f) bes (f ees f) 
  c' (f, ees f) d' (f, ees f) ees' (f, ees f) 
  f'8 [g16 a bes8 bes,] c4 \trill
  bes r r
  g'2. 
  a 
  bes ~
  bes
  a
  bes8^\markup\italic{Solo} f4 f8 (g g )
  g f4 f8 (g g )
  g f4 f8 bes bes 
  \times 2/3 {bes8 (a) bes} \times 2/3 {bes (a) bes} \times 2/3 {bes (a) bes}
  bes8 ees,4 ees8 a a 
  \times 2/3 {a8 (g) a} \times 2/3 {a (g) a} \times 2/3 {a (g) a} 
  a8 d,4 d8 g g 
  \times 2/3 {g f g} \times 2/3 {g f g} \times 2/3 {g f g} 
  g8 c,4 c8 f f 
  \times 2/3 {f ees f} \times 2/3 {f ees f} \times 2/3 {f ees f}
  f4. f8 ees g 
  f ees d4.\trill c8 
  <<{\stemDown c4} \\ {\stemUp g'8 g,,16 g}>> g8 ees'' g ees 
  f g,,16 g g8 d'' f d 
  ees g,,16 g g8 ees'' g ees 
  f2. 
  ees 
  d 
  d 
  c4 r r
  R2.
  \times 2/3 {g'8^\markup\italic{Solo} a bes} \times 2/3 {bes a g} \times 2/3 {g a bes}
  \times 2/3 {a bes c} \times 2/3 {c bes a} \times 2/3 {a bes c}
  \times 2/3 {bes c d} \times 2/3 {d c bes} \times 2/3 {bes c d}
  \times 2/3 {c d ees} \times 2/3 {ees d c} \times 2/3 {c d ees}
  \times 2/3 {d c bes} \times 2/3 {d c bes} \times 2/3 {d c bes}
  \times 2/3 {c bes a} \times 2/3 {c bes a} \times 2/3 {c bes a}
  \times 2/3 {d c bes} \times 2/3 {d c bes} \times 2/3 {d c bes}
  \times 2/3 {c bes a} \times 2/3 {c bes a} \times 2/3 {c bes a}
  bes4 r8 d,^\markup\italic{Solo} g bes 
  <<{\stemDown <ees,, c'>4} \\ {\stemUp bes''16 bes bes bes}>> <<{\stemDown <ees,, c'>4} \\ {\stemUp bes''16 bes bes bes}>><<{\stemDown <ees,, c'>4} \\ {\stemUp bes''16 bes bes bes}>>
  <a ees f, >4 r8 c, f a 
  <<{\stemDown <d,, bes'>4} \\ {\stemUp a''16 a a a}>> <<{\stemDown <d,, bes'>4} \\ {\stemUp a''16 a a a}>> <<{\stemDown <d,, bes'>4} \\ {\stemUp a''16 a a a}>>
  <g d ees, >4 r8 bes, ees g 
  <<{\stemDown <ees, c'>4} \\ {\stemUp g'16 g g g}>> <<{\stemDown <ees, c'>4} \\ {\stemUp g'16 g g g}>> <<{\stemDown <ees, c'>4} \\ {\stemUp g'16 g g g}>> 
  <<{\stemDown <d, a'>4} \\ {\stemUp fis'16 fis fis fis}>> <<{\stemDown <d, a'>4} \\ {\stemUp fis'16 fis fis fis}>> <<{\stemDown <d, a'>4} \\ {\stemUp fis'16 fis fis fis}>>
  <<{\stemDown <d, bes'>4} \\ {\stemUp g'16 g g g}>> <<{\stemDown <d, bes'>4} \\ {\stemUp g'16 g g g}>> <<{\stemDown <d, bes'>4} \\ {\stemUp g'16 g g g}>>
  <<{\stemDown <d, c'>4} \\ {\stemUp a''16 a a a}>> <<{\stemDown <d,, c'>4} \\ {\stemUp a''16 a a a}>> <<{\stemDown <d,, c'>4} \\ {\stemUp a''16 a a a}>>
  <<{\stemDown <d,, bes'>4} \\ {\stemUp g'16 g g g}>> <<{\stemDown <d, bes'>4} \\ {\stemUp g'16 g g g}>> <<{\stemDown <d, bes'>4} \\ {\stemUp g'16 g g g}>>
  <fis a, d, >4 r8 d (fis a)
  g (d g bes g d) 
  ees (c ees g a c)
  fis, (d fis a fis c)
  bes (g bes d g bes)
  a g fis4.\trill g8 
  g (d g bes g d)
  ees (c ees g a c)
  fis, (d fis a fis c)
  bes (g bes d g bes)
  a g fis4.\trill g8 
  g4 
}