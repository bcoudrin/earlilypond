%%  twv41a6.ly
%%  This file is part of the Earlilypond project
%%  
%%  Copyright (c) 2013 Benjamin Coudrin <benjamin.coudrin@gmail.com>
%%                All Rights Reserved
%%
%%  This program is free software. It comes without any warranty, to
%%  the extent permitted by applicable law. You can redistribute it
%%  and/or modify it under the terms of the Do What The Fuck You Want
%%  To Public License, Version 2, as published by Sam Hocevar. See
%%  http://sam.zoy.org/wtfpl/COPYING for more details.

\version "2.14.2"

#(set-default-paper-size "a4")
#(set-global-staff-size 17)

\paper {
  line-width    = 190\mm
  left-margin   = 10\mm
  top-margin    = 10\mm
  bottom-margin = 20\mm
  ragged-last-bottom = ##t
  ragged-bottom = ##f
  annotate-spacing = ##f
  %#(define page-breaking ly:page-turn-breaking)
}

\header {
  title = "Sonata A-Moll"
  subtitle = \markup \center-column { "für Viola di gamba und Continuo"\small \italic "(TWV 41:a6)" }
  composer =  \markup \right-column { "Georg Philipp Telemann" \small "(1681-1767)" }
  tagline = ""
  copyright = \markup { "Copyright : " \char ##x00A9 " 2013 Benjamin Coudrin. Copyleft : released under cc-by-3.0 License" }
}

\header {
  tagline = \markup { "Copyright : " \char ##x00A9 " 2013 Earlilypond, Benjamin Coudrin" }
  composer = "Georg Philipp Telemann"
  composerDate = "1681-1767"
  date = "1710"
  title = "POLIPHÊME"
  subtitle = \markup \center-column { \concat { "Cantate IV" \override #'(baseline-skip . 2) \super e} \small "a voix seule, et simphonie"}
  source = \markup \left-column {
    "Sources : "
     "[1] Cantates Françoises a I et II voix, avec simphonie et sans simphonie composées par Mr Clerambault, organiste et Maitre de clavecin. Livre Premier. "
    \with-url #"http://catalogue.bnf.fr/ark:/12148/cb39782645k/PUBLIC" {"http://catalogue.bnf.fr/ark:/12148/cb39782645k/PUBLIC"}
    "[2] Recueil de cantates à une ou deux voix avec un ou deux dessus et basse de différents auteurs (extrait)"
    \with-url #"http://bibliotheque.versailles.fr/cgi-bin/abnetclop.exe/O7105/ID73f95892/NT4" {"http://bibliotheque.versailles.fr/cgi-bin/abnetclop.exe/O7105/ID73f95892/NT4"}
  }
}

\layout {
  indent = #30
  \context {
    \Staff
    \override BassFigure #'font-size = #-2
  }
}
  
\markup {
  \vspace #18
}
  
%% LARGO
\score {
  \new StaffGroup <<
    \new Staff <<
      \set Staff.instrumentName = #"Viola di gamba"
      \set Staff.shortInstrumentName = #""
      \relative c' {
        \tempo "Largo"
        \key a \minor
        \time 6/4
        \clef alto
        \repeat volta 2 {
          a2. f'
          e r4 a, b
          c b a b e d
          c b a r c d
          e d c d g f
          e d c r b2 ~
          b4 c b (b) d8 [(c)] b4 ~
          b c b ~ b f' e
          d c8 [(b)] c4 b a8 [(gis)] a4
          gis1.
        }
        \repeat volta 2 {
          e'2. g
          cis, r4 d f
          e d e a, e' g
          f e f r a, b
          c d e d c8 [(b)] c4
          b a g r d'2 ~
          d4 cis d ~ d f8 [(e)] d4 ~
          d b c (c) e8 [(d)] c4 
          (c) a bes ~ bes d bes
          gis b d f e gis
          a a, d c8 [b] b4. a8
          a1.
        }
        \pageBreak
      }
    >>
      
    \new Staff <<
      \figuremode {
        \set figuredBassAlterationDirection = #LEFT
        \set figuredBassPlusDirection = #LEFT
        \override VerticalAxisGroup #'minimum-Y-extent = #'()
        \override BassFigureAlignment #'stacking-dir = #UP
        \override FiguredBass.BassFigure #'font-size = #-2
        s2 <6>2. <6 5>4
        s2 <6>4 <7>2 <6>4
        <6 4>2. <5 _+>
        s <5>2 <6\\>4
        <6 4>2. <5 3>
        s <6 5>2 <_+>4
        <6 4 3>2. <6 5>2 <_+>4
        <6 4 3>2. <6 5>2 <6>4
        <6\\>2. <6>4 <_+> <6>
        <_+>1.
        <5>2. <6>
        <_+> <6>
        <6 5 _-> <_+>
        s <6>2 <4 2>4
        <6>2. <6>
        s <6>
        s <6 5>
        <5 4>2 <3> <6>
        <7>2. <6->4 <6> <6->
        <6\\> <6> <5> <7> <6> <_+>
        <7>2 <6>4 <7> <_+>2
        s1.
      }
    
      \set Staff.instrumentName = #"Continuo"
      \set Staff.shortInstrumentName = #""
      \relative c {
        \clef bass
        \key a \minor 
        \time 6/4
        \repeat volta 2 {
          a4 b c d c b
          c d e f2.
          e e,
          a a'
          g g,
          c d2 e4
          f e f d2 e4
          f e f d2 c4
          b2 a4 d, e f
          e e' (b) e,2 r4
        }
        \repeat volta 2 {
          c'4 b c bes a bes
          a a' g f2.
          g a
          d, f
          e fis
          g fis4 d fis
          g2 r4 gis4 e gis
          a2 r4 a, c a
          d2 r4 d f d
          b! d b gis2 e4
          f2 r4 d' e e,
          a a' (e) a,2 r4
        }
      }
    >>
  >>
}


%% ALLEGRO
\score {
  \new StaffGroup <<
    \new Staff <<
      \relative c' {
        \tempo "Allegro"
        \key a \minor
        \time 4/4
        \clef alto
        a4 c8 [b16 a] b8 [e,] e'4
        r8 d16 [c] b8 [a] gis16 [e e e] a [e e e]
        b' [e, e e] c' [e, e e] d' [e d cis] d8 [d]
        d4. c!16 [b] c8 [b16 a] e8 [gis]
        a4 r16 c [b c] d [c b a] g [a b c]
        d [g fis g] e [c b c] d [c b a] g [a b c]
        d [f e d] g [f e d] e8 [c] r16 g [fis g]
        a [g fis e] d [e fis g] a [d cis d] b [g fis g]
        a [g fis e] d [e fis g] a [c b a] d [c b a]
        g [b a g] c [b a g] fis [a g fis] b [a g fis]
        g8 [e] e'4 r8 d [d c16 b]
        c2 b4 r8 b'
        \times 2/3 {a [(b a)]} \times 2/3 {g [(a g)]} \times 2/3 {fis [(g fis)]} \times 2/3 {e [(fis e)]}
        dis8 [fis] b, [dis] e8. [fis16] dis8. [e16]
        e8 [b] c4 r8 b16 [a] b8 [gis]
        a [cis] d4 r8 c!16 [b] c8 [a]
        b [dis] e4 r8 d16 [cis] d8 [b]
        c [e] f4 r8 e16 [d] e8 [cis]
        d4 f8 [e16 d] e8 [a,] a'4
        r8 g16 [f e8 d] cis16 [a a a] d [a a a]
        e' [a, a a] f' [a, a a] g' [a g fis] g8 [g]
        g4. f!16 [e] f8 [e16 d] a8 [cis]
        d4 r8 d,16 [e] fis [e d e] fis [g a b]
        c [c b c] a [c g c] fis, [a c a] fis [a c a]
        b8 [g] r g16 [a] b [a g a] b [c d e]
        f [f e f] d [f c f] b, [d f d] b [d f d]
        e8 [c] c'4 r8 bes [bes a16 g]
        a2 g4 r8 g
        \times 2/3 {f8 [(g f)]} \times 2/3 {e8 [(f e)]} \times 2/3 {d8 [(e d)]} \times 2/3 {c8 [(d c)]} 
        b8 [d] g, [b] c8. [d16] d8. [c16]
        c4 r d ~ d16 [e f d]
        e8 [c] g'4~ g8 [fis16 e] fis [g e fis]
        g8 [g,] r4 e'~ e16 [f! g e]
        f8 [d] a'4. gis16 [fis] gis [a fis gis]
        a,4 c8 [b16 a] b8 [e,] e'4
        r8 d16 [c] b8 [a] gis16 [e e e] a [e e e]
        b' [e, e e] c' [e, e e] d' [e d cis] d8 [d]
        d4. c!16 [b] c8 [b16 a] e8 [gis]
        a [c] e [g] f16 [e d e] f4
        r8 b, [d f] e16 [d c d] e4
        r8 a, [c e] d16 [c b c] d4
        b16 [a gis a] b4 gis16 [fis e fis] gis4
        r4 a' r8 g [g f16 e]
        f2 e4 r8 e
        \times 2/3 {d8 [(e d)]} \times 2/3 {c8 [(d c)]} \times 2/3 {b8 [(c b)]} \times 2/3 {a8 [(b a)]}
        gis16 [e e e] a [e e e] b' [e, e e] c' [e, e e]
        \times 2/3 {d'8 [(e d)]} \times 2/3 {c8 [(d c)]} \times 2/3 {b8 [(c b)]} \times 2/3 {a8 [(b a)]}
        gis8 [b] e, [gis] a8. [b16] b8. [a16]
        a4 r r2
        \bar "|."
        \pageBreak
      }
    >>
     
    \new Staff <<
      \figuremode {
        \set figuredBassAlterationDirection = #LEFT
        \set figuredBassPlusDirection = #LEFT
        \override VerticalAxisGroup #'minimum-Y-extent = #'()
        \override BassFigureAlignment #'stacking-dir = #UP
        \override FiguredBass.BassFigure #'font-size = #-2
        s2 <4 2>8 <6>4.
        <7>4 <6> <_+>4. <6 4>8
        <4+ 2>4 <6> <6\\> <6 4>
        <6 5> s s <_+>
        s <6\\> s s
        <6>1
        <6>2. <6\\>4
        <_+>2 <6>
        <_+> <6>
        <7>4 <6> <7> <6>
        s <6> <7> <3>
        <4 2> <5> <6 5> s
        <6\\> <6> <6\\> <5>
        <4+ 2>2 <6>4 <_+>
        s <6> <7 _!> <6>
        <6>8 <_+> <6>4 <7> <6>
        <6>8 <_+> <6>4 <7> <6>
        <6> <6> <7 _-> <6 _->
        <6> s <4 2> <6>
        <7> <6> <_+> s8 <6 4>
        <4+ 2>4 <6> <6\\> <6- 4>
        <6 5> s4. <_->8 <_+>4
        <_+> <6\\ 4> <_+> s
        <5 _!> <5> <7 _+> s
        s <6 4> s2
        <5 _!>4 <5> <7 3> s
        s <6> <7> <_->
        <4 2>2 <6 5>
        <6>4 <6> <6> <5>
        <4 2>2 <6>
        s4 <3> <4 2> <6>
        s2 <7>4 <6\\>
        <6> <_!> <4 2> <6>
        s2 <7>4 <6\\>
        <6> s <4 2>8 <6> s4
        <7> <6> <_+> s8 <6 4>
        <6 4+>4 <6> <6\\> <6 4>
        <6 5> s s <_+>
        s <6> s2
        s4 <6> s2
        s4 <6> <5> s
        <6>2 <_+>
        s4 <6> <7> <3>
        <4 2> <5> s2
        <6 5> <6\\>4 <6>
        <4 2> <6> <6\\> s
        <6 5> s <6\\> <6>
        <4+ 2> s <6> <6 5>8 <_+>
        s1
      }      
      \relative c' {
        \clef bass
        \key a \minor
        \repeat volta 2 {
          r4 a r8 g [g f16 e]
          f2 e4 r8 e'
          \times 2/3 {d [(e d)]} \times 2/3 {c [(d c)]} \times 2/3 {b [(c b)]} \times 2/3 {a [(b a)]}
          gis8 [b] e, [gis] a [d,] e [e,]
          a4 a' g r
          b, c g r
          b g c e
          d r fis g
          d r fis r
          e r dis r
          e g8 [fis16 e] fis8 [b,] b'4
          r8 a16 [g fis8 e] dis16 [b b b] e [b b b]
          fis' [b, b b] g' [b, b b] a' [b a gis] a8 [a]
          a4. g!16 [fis] g8 [a b b,]
          e4 (e16) [d e c] d [c d e] d [f e d]
          c [b a g'] f [e f d] e [d e f] e [g f e]
          d [c b a'] g [fis g e] f [e f g] f [a g f]
          e [d c bes'] a [g a f] g [f g a] g [bes a g]
          f8 [d] d'4 r8 c [c bes16 a]
          bes2 a4 r8 a
          \times 2/3 {g8 [(a g)]} \times 2/3 {f8 [(g f)]} \times 2/3 {e8 [(f e)]} \times 2/3 {d8 [(e d)]}
          cis8 [e] a, [cis] d [g] a [a,]
          d16 [e fis g] a [g fis e] d4 r
          a'8 [g f e] d4 r
          g16 [a b c] d [c b a] g4 r
          d'8 [c b a] g4 r
          c,4 e8 [d16 c] d8 [g,] g'4
          r8 f16 [e] d8 [c] b!16 [g g g] c [g g g]
          d' [g, g g] e' [g, g g] f' [g f e] f8 [f]
          f4. e16 [d] e8 [c] g' [g,] c4 c'4. b16 [a] b [c a b]
          c4 r a~ a16 [b c a] b8 [g] d'4~ d8 [cis16 b] cis [d b cis]
          d4 r b,~ b16 [c d b]
          c8 [a] a'4 r8 g [g f16 e]
          f2 e4 r8 e'
          \times 2/3 {d8 [(e d)]} \times 2/3 {c8 [(d c)]} \times 2/3 {b8 [(c b)]} \times 2/3 {a8 [(b a)]}
          gis8 [b] e, [gis] a [d] e [e,]
          a16 [e a b] c [a b cis] d [e f e] d [c b a]
          g [d g a] b [g a b] c [d e d] c [bes a g]
          f [c f g] a [f g a] b! [c d c] b [a gis fis]
          gis [a b a] gis [fis e dis] e [fis gis fis] e [d c b]
          a'4 c8 [b16 a] b8 [e,] e'4
          r8 d16 [c b8 a] gis [e] r4
          gis16 [e e e] a [e e e] b' [e, e e] c' [e, e e]
          \times 2/3 {d'8 [(e d)]} \times 2/3 {c8 [(d c)]} \times 2/3 {b8 [(c b)]} \times 2/3 {a8 [(b a)]}
          gis16 [e e e] a [e e e] b' [e, e e] c' [e, e e]
          d'4. c16 [b] c8 [a] d, [e]
          a,4 r r2
        }
        \repeat volta 2 {
        }
      }
    >>
  >>
  \layout { indent = #0 }
}


%% SOAVE  
\score {
  \new StaffGroup <<
    \new Staff <<
      \relative c'' {
        \tempo "Soave"
        \key a \minor
        \time 6/8 
        \clef alto
        r8 g [e] c16 [(d) c (b) c8]
        r8 d [e] f16 [(g) f (e) f8~]
        f [g f] e4 d8
        r g4~ g16 [b, c b c a]
        b8 g'4~g16 [a, b a b g]
        a [e'] \appoggiatura e4 d8.\stopped [c16] b [g' fis e d c]
        b [c] a8. [g16] g8 \breathe d' [b]
        g16 [a g fis g8] r8 a [b]
        c16 [(d) c (b) c8] (c8) [d c]
        b4 a8 r d4
        (d16) [f e d c b] c [a] fis'4
        (fis16) [fis g fis e dis] e8 a,4
        (a16) [a b a g fis] \times 2/3 {g16 [(b a)]} \times 2/3 {a16 [(c b)]} b8
        (b16) [e] fis,8. e16 e8 [e'16 b cis d]
        cis [e] g8. [g,16] g8 [f!16 e f8]
        r8 d'16 [a b c] b [d] f8. f,16
        f8 [e16 d e8] r c'16 [(e) d (c)]
        e, [(c') b (c) d (c)] r8 c16 [(e) d (c)]
        fis, [(c') b (c) d (c)] r8 c16 [(e) d (c)]
        b8 [g' e] c16 [(d) c (b) c8]
        r d [e] f16 [(g) f (e) f8]
        (f) [g f] e4 d8
        r8 c'4 (c16) [e, f e f d]
        e8 c'4 (c16) [d, e d e c]
        d [a'] \appoggiatura a4 g8.\stopped [f16] e [c' b a g f]
        e [f] d8. [c16] c8 \breathe f,4
        (f16) [(a) g (f) e (f)] c'8 f,4
        (f16) [a g f e d] e [g a b c g]
        a [c d e f d] e [f] d8. [c16]
        c4. r
        \bar "|."
        \pageBreak
      }
    >>
      
    \new Staff <<
      \figuremode {
        \set figuredBassAlterationDirection = #LEFT
        \set figuredBassPlusDirection = #LEFT
        \override VerticalAxisGroup #'minimum-Y-extent = #'()
        \override BassFigureAlignment #'stacking-dir = #UP
        \override FiguredBass.BassFigure #'font-size = #-2
        s4 <6>8 s4 <6>8
        <6> s <6> s4.
        <6 5> s
        <6> <7>4 <6>8
        <6 4>4. <6 5>4 <7 5>8
        <7>4 <6> <6\\>8 <6>
        s <_+> s4. <6 _+>8
        s4 <6>8 <6> s <6>
        s4. <6 5>
        s4 <_+>8 <5!> s <6 4>
        <6 5> s2 <6\\>8
        <_+>4. <7>4 <6>8
        <6 5> s4. <6\\>8 <6>
        <6> <6\\ 5> <_+> s4.
        <7 _+>4 <6 5>8 <5 4> s <_!>
        <6>s2 <6 5>8
        <5 4> s <3> <6>4.
        s <6>
        <6\\> <6 5>
        s4 <6>8 s4 <6>8
        <6> s <6> s4.
        <6 5> s
        <6> <7>4 <6>8
        <6 4>4. <6 5>4 <7 5>8
        <7>4 <6> <6>8 <6>
        s4. <7>4 <6>8
        s4. <6>
        <6 5> s4 <6>8
        s <6> <6> s4.
        s s
      }
      
      \relative c {
        \key a \minor
        \clef bass
        \time 6/8
        c8 [r g'] a [r e]
        f [r e] d [r d']
        b [r b] c [c, g']
        b, [r b] e [r e]
        d [r d] c [r c]
        fis, [r fis] g [a b]
        c [d d,] g [r d']
        e [r b] c [r b]
        a [r a'] fis [r fis]
        g [g, d'] b [r a]
        gis [r gis'] a [r a,]
        b [r b'] c [r c]
        dis, [r dis] e [fis g]
        g, [a b] e, [r e']
        a, [r cis] d [r d]
        fis, [r fis'] g [r b,]
        c [r c] e, [r e]
        a [r a] e [r e]
        a [r a] fis [r fis]
        g [r g'] a [r e]
        f [r e] d [r d']
        b [r b] c [c, g']
        e [r e] a [r a]
        g [r g] f [r f]
        b, [r b] c [d e]
        f [g g,] a [r a]
        d [r d] a [r a]
        b [r b] c [r e]
        f [e d] c [g' g,]
        c4. r
      }
    >>
  >>
  \layout { indent = #0 }
}


%% ALLEGRO
\score {
  \new StaffGroup <<
    \new Staff <<
      \relative c' {
        \tempo "Allegro"
        \time 2/4 
        \key a \minor
        \clef alto
        \repeat volta 2 {
          \partial 8 e8
          a,8 [c] b [a16 gis]
          a8 e4 fis16 [gis]
          a [(b c) a] b [(c d) b]
          c [a e a] b [gis e gis]
          a [(b c) a] b [(c d) b]
          c [b a c] b8 [e]
          a, [c] b [a16 gis]
          a8 e4 f'8
          e [d16 (c)] d [(c) b (c)]
          a4 r8 b
          \times 2/3 {c [(b c)]} \times 2/3 {c [(b c)]}
          fis,16 [a g a] fis [a d c]
          \times 2/3 {b8 [(a b)]} \times 2/3 {b [(a b)]}
          e,16 [g fis g] e [g c b]
          \times 2/3 {a8 [(gis a)]} \times 2/3 {a [(gis a)]}
          dis,16 [fis e fis] dis [fis b a]
          g [b c b] a [c d c]
          b [d e d] cis [e fis e]
          \times 2/3 {dis8 [(b dis)]} \times 2/3 {fis [(dis fis)]}
          a4. g16 [fis]
          g [fis e fis] b,8 [dis]
          e4 (e16) [e dis e]
          g [e dis e] g [e dis e]
          c [e (dis e] dis [e dis e])
          g [e dis e] g [e dis e]
          b [e (dis e] dis [e dis e])
          \times 2/3 {a,8 [(gis a)]} \times 2/3 {a [(gis a)]}
          a4. c8
          b [a16 (g)] a [(g) fis (g)]
          e4. \break
        }
        \repeat volta 2 {
          g'8
          c, [e] d [c16 b]
          c8 g4 a16 [b]
          c [(d e) c] d [(e f) d]
          e [c g c] d [b g b]
          c [(d e) c] d [(e f) d]
          e [d c e] d8 [fis]
          g8 f!4 e16 [d]
          e8 d4 fis8
          g f!4 e16 [d]
          e8 d4 e8
          f16 [e d e] a,8 [cis]
          d16 [a bes a] cis [a d a]
          e' [a, bes a] d [a e' a,]
          f' [a, bes a] cis [a d a]
          e' [a, bes a] d [a e' a,]
          f' [(e f d)] fis [(e fis d)]
          \times 2/3 {g8 [(a bes)]} \times 2/3 {e, [(f g)]}
          \times 2/3 {cis, [(d e)]} a,8 [g]
          f [d'] e, [cis']
          d4 r8 e
          \times 2/3 {f8 [(e f)]} \times 2/3 {f [(e f)]}
          b,16 [d c d] b [d g f]
          \times 2/3 {e8 [(d e)]} \times 2/3 {e [(d e)]}
          a,16 [c b c] a [c f e]
          \times 2/3 {d8 [(cis d)]} \times 2/3 {d [(cis d)]}
          gis,16 [b a b] gis [b e d]
          c [e d c] b [d c b]
          a [e f e] gis [e a e]
          b' [e, f e] a [e b' e,]
          c' [e, f e] gis [e a e]
          b' [e, f e] a [e b' e,]
          c' [(b c a)] cis [(b cis a)]
          \times 2/3 {d8 [(cis d)]} \times 2/3 {d [(cis d)]}
          d4. c!16 [b]
          c [b a b] e,8 [gis]
          a4 ~ a16 [a gis a]
          c [a gis a] c [a gis a]
          f [a (gis a] gis [a gis a)]
          c [a gis a] c [a gis a]
          e [a (gis a] gis [a gis a)]
          \times 2/3 {d8 [(e f)]} \times 2/3 {b, [(c d)]}
          \times 2/3 {gis,8 [(a b)]} e,8 [f']
          e [d16 (c)] d [(c) b (c)]
          a4.
        }
      }
    >>
    
    \new Staff <<
      \figuremode {
        \set figuredBassAlterationDirection = #LEFT
        \set figuredBassPlusDirection = #LEFT
        \override VerticalAxisGroup #'minimum-Y-extent = #'()
        \override BassFigureAlignment #'stacking-dir = #UP
        \override FiguredBass.BassFigure #'font-size = #-2
        <6>8
        s4 <6>8 <_+>
        s4 <6>8 <6\\>
        s4 <6>
        s <_+>
        <6> <6>
        s <_+>
        <6> <6>8 <_+>
        s4 <6>8 <6\\>
        <6>4. <_+>8
        s4 <6>
        s2
        <7 _+>4. <6>8
        s2
        <7>4. <6>8
        <7>2
        <7 _+>4. 
        <6>8
        <5> <6> <5> <6>
        <5> <6> <5> <6\\>
        <_+>2
        <6>4 <6 5>
        s <_+>
        s <6>
        s2
        s
        s
        <6>
        <5>
        <6 5>4 <7 _+>8 <3>
        <6>4. <_+>8
        s4.
        <6>8
        s2
        s4 <6>8 <6>
        s4 <6>
        s2
        <6>4 <6>
        s4. <6\\>8
        <6>4 s
        s4. <6\\>8
        <6>4 s
        s4. <6>8
        s <_-> <_+>4
        <6> <6\\>
        <6> <6>8 <6\\>
        s4 <6\\>
        <6> <6>8 <6\\>
        s4 <4+ 2>
        <6>2
        <_+>4. <6>8
        s4 <6 _->8 <_+>
        s4 <6>
        s2
        <7 _!>4. <6>8
        s2
        <7>4. <6>8
        <7>2
        <7 _+>4. <6>8
        s4 <6>
        <6> <6\\>
        <6> <6>8 <6\\>
        s4 <6\\>
        <6> <6>8 <6\\>
        s4 <4+ 2>
        <6> <5>
        <6 5>2
        s4 <_+>
        s <6>
        s2
        s
        s
        <6>
        <6>
        <_+>4. <3>8
        <6>4. <_+>8
        s4.
      }
      
      \relative c' {
        \clef bass
        \key a \minor
        \time 2/4
        \partial 8 gis8
        \repeat volta 2 {
          a4 d,8 [e]
          a, [b] c [b]
          a4 gis
          a e8 [d']
          c4 gis
          a e'8 [d]
          c4 d8 [e]
          a, [b] c [b]
          c [f] d [e]
          a, [a'] gis [e]
          a4 a,
          d r8 fis
          g4 g,
          c r8 e
          fis4 fis,
          b r8 dis
          e4 fis
          g a
          b r8 b
          c [a dis b]
          e [a,] b [b,]
          e [fis] g [fis]
          e4 e
          a r
          e e
          g r
          fis e
          dis8 [fis] b, [a]
          g [c] a [b]
          e,4.
          b''8
          c4 g
          c,8 [d] e [d]
          c4 b
          c g8 [f']
          e4 b
          c g8 [a]
          b [g] g [g]
          c [g] g [a]
          b [g] g [g]
          c [g] g [cis']
          d [g,] a [g]
          f4 e8 [d]
          cis4 f8 [e]
          d4 e8 [d]
          cis4 f8 [e]
          d4 c
          bes2
          a4 r8 cis
          d4 g,8 [a]
          d, [d'] cis [a]
          d4 d
          g r8 b,
          c4 c
          f r8 a,
          b4 b
          e r8 gis,
          a4 d
          c b8 [a]
          gis4 c8 [b]
          a4 b8 [a]
          gis4 c8 [b]
          a4 g!
          f8 [f'] b, [d]
          gis, [b] e, [gis']
          a [d,] e [e,]
          a [b] c [b]
          a4 a
          d r
          a a
          c r
          f,2
          e4 r8 d'
          c [f] d [e]
          a,4.
        }
        \repeat volta 2 {
        }
      }
    >>
  >>
  \layout { indent = #0 }
}

