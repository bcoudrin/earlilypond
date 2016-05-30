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
  \partial 4 g4 
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
  \override Beam.auto-knee-gap = #4
  bes8 [g,,16 g g8 g'' bes g]
  | % 2
  bes [g,,16 g g8 g'' bes g]
  | % 3
  a [d,,16 d d8 fis' a fis]
  | % 4
  a [d,,16 d d8 fis' a fis]
  | % 5
  bes [g,,16 g g8 g'' bes g]
  | % 6
  a4 r r
  | % 7
  b2. 
  | % 8
  bes 
  | % 9
  a ~
  a
  g ~
  g
  fis2. 
  | % 14
  g4 r r 
  | % 15
  g8 [f16 ees d8 c bes a]
  | % 16
  g [f16 ees d8 c bes a]
  | % 17
  g4\fermata r r
  | % 18
  g''4 a fis 
  | % 19
  \omit TupletNumber \times 2/3 {g8 (a bes)} \times 2/3 {bes (a g)} \times 2/3{g (a bes)} 
  | % 20
  \times 2/3 {a bes c} \times 2/3 {c bes a} \times 2/3 {a bes c}
  | % 21
  \times 2/3 {bes c d} \times 2/3 {d c bes} \times 2/3 {bes c d}
  | % 22
  \times 2/3 {c d ees} \times 2/3 {ees d c} \times 2/3 {c d ees}
  | % 23
  \times 2/3 {d c bes} \times 2/3 {d c bes} \times 2/3 {d c bes}
  | % 24
  \times 2/3 {c bes a} \times 2/3 {c bes a} \times 2/3 {c bes a}
  | % 25
  \times 2/3 {d c bes} \times 2/3 {d c bes} \times 2/3 {d c bes}
  | % 26
  \times 2/3 {c bes a} \times 2/3 {c bes a} \times 2/3 {c bes a}
  | % 27
  bes4 r r 
  | % 28
  \times 2/3 {f8 b d} \times 2/3 {d c b} \times 2/3 {d c b} 
  | % 29
  \times 2/3 {c (ees,) c'} \times 2/3 {c (ees,) c'} \times 2/3 {c (ees,) c'}
  | % 30
  \times 2/3 {ees, a c} \times 2/3 {c bes a} \times 2/3 {c bes a}
  | % 31
  \times 2/3 {bes d, bes'} \times 2/3 {bes d, bes'} \times 2/3 {bes d, bes'}
  | % 32
  \times 2/3 {d, g bes} \times 2/3 {bes a g} \times 2/3 {bes a g}
  | % 33
  \times 2/3 {a c, a'} \times 2/3 {a c, a'} \times 2/3 {a c, a'}
  | % 34
  \times 2/3 {c, fis a} \times 2/3 {a g fis} \times 2/3 {a g fis}
  | % 35
  \times 2/3 {g bes, g'} \times 2/3 {g bes, g'} \times 2/3 {g bes, g'}
  | % 36
  \times 2/3 {cis, a cis} \times 2/3 {cis a cis} \times 2/3 {cis a cis}
  | % 37
  \times 2/3 {d e f} \times 2/3 {f g a} \times 2/3 {f e d}
  | % 38
  \times 2/3 {cis a cis} \times 2/3 {cis a cis} \times 2/3 {cis a cis}
  | % 39
  \times 2/3 {d e f} \times 2/3 {f g a} \times 2/3 {f e d}
  | % 40
  \times 2/3 {bes' a g} \times 2/3 {f e d} \times 2/3 {a b cis}
  | % 41
  f8 [d,16 d d8 f' a f]
  | % 42
  e [a,,16 a a8 e'' g e]
  | % 43
  f [d,16 d d8 f' a f]
  | % 44
  e4 r r
  | % 45
  fis2. 
  | % 46
  f 
  | % 47
  e 
  | % 48
  f 
  | % 49
  e 
  | % 50
  e 
  | % 51
  f4 r r
  R2.*7
  a16 (g) f (e) f (e) d (cis) d (cis) bes (a) 
  | % 60
  bes8 g16 (a bes8) bes16 (c d8) g16 (a) 
  | % 61
  bes (a) g (f) g (f) e (d) e (d) cis (b) 
  | % 62
  cis8 a16 (b cis8) cis16 (d e8) f16 (g) 
  | % 63
  a (g) f (e) f (e) d (c) d (c) bes (a) 
  | % 64
  bes (a) g (f) g (f) e (d) e (d) c (bes) 
  | % 65
  c8-! e-! g-! c-! e-! g-! 
  | % 66
  a, f16 (g a8) a16 (bes c8) d16 (ees) 
  | % 67
  f (ees) d (c) d (c) bes (a) bes (a) g (f) 
  | % 68
  g8 g16 (a bes8) bes16 (c d8) ees16 (f) 
  | % 69
  g f ees d ees d c bes c bes a g 
  | % 70
  a8 a16 (bes c8) c16 (d ees8) f16 (g) 
  | % 71
  a (g) f (ees) f (ees) d (c) d (c) bes (a) 
  | % 72
  bes8 bes16 (c d8) d16 (ees f8) g16 (a) 
  | % 73
  bes (a) g (f) g (f) ees (d) ees (d) c (bes)
  | % 74
  a (f ees f) a (f ees f) bes (f ees f) 
  | % 75
  c' (f, ees f) d' (f, ees f) ees' (f, ees f) 
  | % 76
  f'8 [g16 a bes8 bes,] c4 \trill
  | % 77
  bes r r
  | % 78
  g'2. 
  | % 79
  a 
  | % 80
  bes ~
  bes
  a
  | % 83
  bes8^\markup\italic{Solo} f4 f8 (g g )
  | % 84
  g f4 f8 (g g )
  | % 85
  g f4 f8 bes bes 
  | % 86
  \times 2/3 {bes8 (a) bes} \times 2/3 {bes (a) bes} \times 2/3 {bes (a) bes}
  | % 87
  bes8 ees,4 ees8 a a 
  | % 88
  \times 2/3 {a8 (g) a} \times 2/3 {a (g) a} \times 2/3 {a (g) a} 
  | % 89
  a8 d,4 d8 g g 
  | % 90
  \times 2/3 {g f g} \times 2/3 {g f g} \times 2/3 {g f g} 
  | % 91
  g8 c,4 c8 f f 
  | % 92
  \times 2/3 {f ees f} \times 2/3 {f ees f} \times 2/3 {f ees f}
  | % 93
  f4. f8 ees g 
  | % 94
  f ees d4.\trill c8 
  | % 95
  <<{\stemDown d4} \\ {\stemUp g8 g,,16 g}>> g8 ees'' g ees 
  | % 96
  f g,,16 g g8 d'' f d 
  | % 97
  ees g,,16 g g8 ees'' g ees 
  | % 98
  f2. 
  | % 99
  ees 
  | % 100
  d 
  | % 101
  d 
  | % 102
  c4 r r
  r2.
  \times 2/3 {g'8^\markup\italic{Solo} a bes} \times 2/3 {bes a g} \times 2/3 {g a bes}
  | % 105
  \times 2/3 {a bes c} \times 2/3 {c bes a} \times 2/3 {a bes c}
  | % 106
  \times 2/3 {bes c d} \times 2/3 {d c bes} \times 2/3 {bes c d}
  | % 107
  \times 2/3 {c d ees} \times 2/3 {ees d c} \times 2/3 {c d ees}
  | % 108
  \times 2/3 {d c bes} \times 2/3 {d c bes} \times 2/3 {d c bes}
  | % 109
  \times 2/3 {c bes a} \times 2/3 {c bes a} \times 2/3 {c bes a}
  | % 110
  \times 2/3 {d c bes} \times 2/3 {d c bes} \times 2/3 {d c bes}
  | % 111
  \times 2/3 {c bes a} \times 2/3 {c bes a} \times 2/3 {c bes a}
  | % 112
  bes4 r8 d,^\markup\italic{Solo} g bes 
  | % 113
  <<{\stemDown <ees,, c'>4} \\ {\stemUp bes''16 bes bes bes}>> <<{\stemDown <ees,, c'>4} \\ {\stemUp bes''16 bes bes bes}>><<{\stemDown <ees,, c'>4} \\ {\stemUp bes''16 bes bes bes}>>
  | % 114
  <a ees f, >4 r8 c, f a 
  | % 115
  <<{\stemDown <d,, bes'>4} \\ {\stemUp a''16 a a a}>> <<{\stemDown <d,, bes'>4} \\ {\stemUp a''16 a a a}>> <<{\stemDown <d,, bes'>4} \\ {\stemUp a''16 a a a}>>
  | % 116
  <g d ees, >4 r8 bes, ees g 
  | % 117
  <<{\stemDown <ees, c'>4} \\ {\stemUp g'16 g g g}>> <<{\stemDown <ees, c'>4} \\ {\stemUp g'16 g g g}>> <<{\stemDown <ees, c'>4} \\ {\stemUp g'16 g g g}>> 
  | % 118
  <<{\stemDown <d, a'>4} \\ {\stemUp fis'16 fis fis fis}>> <<{\stemDown <d, a'>4} \\ {\stemUp fis'16 fis fis fis}>> <<{\stemDown <d, a'>4} \\ {\stemUp fis'16 fis fis fis}>>
  | % 119
  <<{\stemDown <d, bes'>4} \\ {\stemUp g'16 g g g}>> <<{\stemDown <d, bes'>4} \\ {\stemUp g'16 g g g}>> <<{\stemDown <d, bes'>4} \\ {\stemUp g'16 g g g}>>
  | % 120
  <<{\stemDown <d, c'>4} \\ {\stemUp a''16 a a a}>> <<{\stemDown <d,, c'>4} \\ {\stemUp a''16 a a a}>> <<{\stemDown <d,, c'>4} \\ {\stemUp a''16 a a a}>>
  | % 121
  <<{\stemDown <d,, bes'>4} \\ {\stemUp g'16 g g g}>> <<{\stemDown <d, bes'>4} \\ {\stemUp g'16 g g g}>> <<{\stemDown <d, bes'>4} \\ {\stemUp g'16 g g g}>>
  | % 122
  <fis a, d, >4 r8 d (fis a)
  | % 123
  g (d g bes g d) 
  | % 124
  ees (c ees g a c)
  | % 125
  fis, (d fis a fis c)
  | % 126
  bes (g bes d g bes)
  | % 127
  a g fis4.\trill g8 
  | % 128
  g (d g bes g d)
  | % 129
  ees (c ees g a c)
  | % 130
  fis, (d fis a fis c)
  | % 131
  bes (g bes d g bes)
  | % 132
  a g fis4.\trill g8 
  | % 133
  \partial 4 g4 
}