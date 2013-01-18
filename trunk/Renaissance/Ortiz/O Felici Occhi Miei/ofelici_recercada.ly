\version "2.12.3"

\header{
  title = "O Felici Occhi Miei"
  subtitle = "Recercada secunda sobre cantus (D. Ortiz)"
  tagline = ""
  copyright = \markup { "Copyright : " \char ##x00A9 " 2012 Benjamin Coudrin. Copyleft : released under cc-by-3.0 License" }
}

%<<
%  \new Staff = ossia \with {
%    
%  }
%  { \stopStaff s1*12 }
%>>

global = {
  \set Score.skipBars = ##t
  
  % incipit
  \once \override Score.SystemStartBracket #'transparent = ##t
  \override Score.SpacingSpanner #'spacing-increment = #1.0 % tight spacing
  \key d \minor
  \time 2/2
  \once \override Staff.TimeSignature #'style = #'mensural
  \override Voice.NoteHead #'style = #'mensural
  \override Voice.Rest #'style = #'mensural
  \set Staff.printKeyCancellation = ##f
  \cadenzaOn % turn off bar lines
  \skip 1*7
  \once \override Staff.BarLine #'transparent = ##f
  \bar "||"
  \skip 1*1 % need this extra \skip such that clef change comes
            % after bar line
  \bar ""

  % main
  \revert Score.SpacingSpanner #'spacing-increment % CHECK: no effect?
  \cadenzaOff % turn bar lines on again
  \once \override Staff.Clef #'full-size-change = ##t
  \set Staff.forceClef = ##t
  \key d \minor
  \time 4/2
  \override Voice.NoteHead #'style = #'default
  \override Voice.Rest #'style = #'default

  % FIXME: setting printKeyCancellation back to #t must not
  % occur in the first bar after the incipit.  Dto. for forceClef.
  % Therefore, we need an extra \skip.
  \skip 1*1
  \set Staff.printKeyCancellation = ##t
  \set Staff.forceClef = ##f

  \skip 1*79 % the actual music

  % let finis bar go through all staves
  \override Staff.BarLine #'transparent = ##f

  % finis bar
  \bar "|." 
}

ossiaCantusNotes = {
  \relative c'' {
	%\clef soprano
        %r\breve r1
        g1 d'2 d d4. c8 d c bes a
	bes2 g4 a
	bes4 c8 bes c bes a g
	a4 bes a2
	g4 a bes c
	bes4 a g f8 g
	a8 g fis e g4 f
	g2 g d' d
	d8 e f e d c bes a
	bes2 g4 a
	bes c d bes
	c8 d ees d c bes a g
	a4 bes g a fis g4. f8 f4 g\breve r\breve r2 bes2. c4 d bes c2. bes4
	bes4 a8 g a bes g a
	bes2 d2 d4. c8 d bes c d
	c4. d8 ees d c d
	e4. d8 e c d e
	d2 d d d c4. bes8 bes4 a8 g
	a4 bes8 c d2. c4 bes a
	g4. a8 bes g a bes
	a8 bes c bes c bes a g
	fis4 g4. f16 e f4 g1 r2 g2 a4 g8 a bes g a bes
	c4. bes8 a bes g a
	bes4 g8 a bes c d bes
	c2 d cis4 d4. c8 d16 c bes c
	d2 d c a
	bes4 c8 bes c bes a g
	a4 bes a2
	g2 g g4. f8 g e f g
	f4. g8 a g f e
	d4. e8 f e f g
	f4. e8 d e f4
	e4. f8 g f e d
	e8 d e f e d e4
	d8 e f e d e f g
	a4 bes c d
	c bes bes a8 g
	a4 bes2 a4
	bes2 r4 d4 c a bes bes a g8 f g a g4
	f4. e8 d4 f
	e8 f g f e d e4
	d1 d2 r4 d'4 c a bes8 a g bes a2 g
	f4 g8 f g f e d
	e4 d e2
	d2 d'2. c4 bes a bes a g2. f8 e d e f d
	e4 f e2 d\breve\fermata
%	\bar"||"  
  }
}

cantusNotes = {
  \relative c'' {
    \set Staff.instrumentName = #"Cantus"
    
    % incipit
    \clef "mensural-c1"
    r\breve r1 g1 \skip 1*4
    
    % main
    \clef treble
    %\context Staff = ossia {
    %    \startStaff \ossiaNotes \stopStaff
    %}
    r\breve r1 g1 d'2 d d2. c4 bes2 g bes bes a1 g2 bes2. a4 g1 f2 g g d' d d2. c4 bes2 g4 a
    bes c d bes c2. bes4 a2 g1 f2 g\breve r\breve r2 bes1 bes2 c2. bes4 bes2 a bes d d d c c ees1
    d2 d d d c bes a d2. c4 bes a g2 bes a g1 f2
    g1 r2 g2 a bes c a bes2. bes4 c2 d d c d d c a bes c a1 g2 g g1 f2 f d f f f
    e1 e d4 e f g a bes c2. bes4 bes1 a2 bes r4 d4 c a bes bes a2 g f f e1 d d2 r4 d'4 c a bes bes a2
    g2 f f e1 d2 d'2. c4 bes2. a4 g2. f4 d2 e1 d\breve\fermata
%    \bar"||"
  }
}

cantusLyrics = \lyricmode {
 % incipit
 _ _1 O \skip 1*4
 
 % main
 _ _ _ O fe2 -- li2 -- cioc2. -- chi4 miei2 fe2 -- li2 -- ci2
 voi1 __ _ _ _ _2
 O2 fe2 -- li2 -- cioc2. -- chi4 miei2
 fe4 -- __ _ _ _ _ _ li2 -- __ _ _ _ _ ci2
 voi1
 \skip 2*7
 Che1 se2 -- te2. Car'4 al2 mio2 sol,2
 per2 -- che2 sem2 -- bianz'2 ha2 -- ve1 -- te2
 Degl'2 oc2 -- chi2 che2 gli2 fur2
 si2 __ _ _ dol2 cie2 re2 __ _ _ _ i1
 _2 Voi2 ben voi se -- te voi,2.
 voi4 ben2 voi se -- te voi,
 voi2 fe -- li -- ci,2
 ed2 i1 -- o,2
 ed2 i1 -- o,2
 Io2 non, che per que -- tar1
 vo1 -- stro4 -- __ _ _ _ _ _
 de2 -- __ _ si2 -- __ _ _ o2
 \skip 4*1
 Corr'4 a mi -- rar l'on -- de2 mi2  strug1 -- go1 po1 i,2
 \skip 4*1
 Corr'4 a mi -- rar l'on -- de2 mi2  strug2 -- go2 po1 i,2
 mi2 -- __ _
 strug2 -- __ _ _ _ go2 po1 -- i
}

altusNotes = {
  \relative c' {
    \set Staff.instrumentName = #"Altus"
    
    % incipit
    \clef "mensural-c2"
    d1 \skip 1*7
    
    % main
    \clef treble
    d1 e2 g g fis g bes bes a bes2. a4 g2 bes2. a4 g1 f2 g1 r2 d2 e c d bes'2. a4 g1 f2 g1 g
    g2. f4 e1 d bes2 c1 c2 d2. c4 bes2 a bes f'1 f2 g2. f4 f2 d f f f f f f
    g2 g r2 bes bes bes a g f1 d ees2 ees ees1 d
    d\breve r2 d2 e f g2. f4 e2 d e1 d2 d e f2. d4 g1 f2 g d e1 d2 d f d d d
    c1 c a2 a' a a g1 f d2 r4 d4 e f g e f2 e d d c2. bes4 a1 g2 r4 d'4
    e4 f g e f2 e d d c2. bes4 a2 a bes2. c4 d2 e1 d2 c1 b\breve\fermata
%    \bar"||"
  }
}

altusLyrics = \lyricmode {
 % incipit
 O \skip 1*6
 
 % main
 O1 fe2 -- li2 -- cioc2 -- chi2 miei2 fe2 -- li2 -- ci2
 voi2 __ _ _ _ _ _ _ _ _ _ \skip 2*1
 fe2 -- li -- ci voi
 %fe2 -- __ _ li1 -- ci2 voi1
 %fe1 -- li2 -- __ _ _ _ ci1 voi2
 _2 ii2 _ _ _ _ _ _ _ _ _ _ _ _ _ _
 Che1 se2 -- te2. Car'4 al2 mio2 sol,2
 Che1 se2 -- te2. Car'4 al2 mio2 sol,2
 per2 -- che2 sem2 -- bianz'2 ha2 -- ve2 -- te2 \skip 2*1
 De2 glioc2 -- chi2 che2 gli2 fur1
 si1 dol2 ci2 et1 re1 i1 \skip 1*1 \skip 2*1
 Voi2 ben voi se2. -- te4 voi,2.
 %voi4 ben2 voi se -- te voi,
 %voi2
 _ _ _ _ _ 
 fe -- li -- ci,2
 ed2 i1 -- o,2
 ed2 i1 -- o,2
 Io2 non, che per que -- tar1
 vo1 -- stro4 -- __ _ _ _ _ _
 de2 -- __ _ si2 -- __ _ _ o2
 \skip 4*1
 Corr'4 a mi -- rar l'on -- de2 mi2  strug1 -- go1 po1 i,2
 \skip 4*1
 Corr'4 a mi -- rar l'on -- de2 mi2  strug2 -- go2 po1 i,2
 mi2 -- __ _
 strug2 -- __ _ _ _ go2 po1 -- i
}

tenorNotes = {
  \relative c' {
    \set Staff.instrumentName = #"Tenor"
    
    % incipit
    \clef "mensural-c3"
    r\breve d1 \skip 1*5    
    
    % main
    \clef "G_8"
    r\breve d1 e2 g g f g g, d' d g,1 r1 g1 d'2 d c c bes g bes bes a1 g d'
    ees2. d4 c2 bes a1 g2 g1 g2 a2. g4 f2 e f d'1 d2 ees2. bes4 d2 c bes bes bes bes a a
    c1 bes2 bes f' f f d d1 bes bes2 g c2. bes4 a1
    g2 bes bes bes c bes g d' d r4 g,4 a2 bes c a bes2. bes4 c2 d d c d d r2 bes2 c1 a a bes bes
    bes2 bes g1 g f f' d2 ees c1 bes r2 r4 bes4 c d bes c a2 bes2. a4 g1 f2 g g r2 r4 bes4 c d bes c
    a2 bes2. a4 g1 f2 g2. a4 bes2 c g\breve\fermata
%    \bar"||"
  }
}

ossiaBassusNotes = {
  \relative c'' {
  	\clef varbaritone
	r\longa r\breve g1 d'4. e8 f4 e d c bes a bes4. a8 g f g a bes4 c8 bes c bes a g a4 bes a2 g4. f8 g e f g d1
	d2 d ees4. d8 c d e f g a bes a g f e d c1 c4. d8 ees d e c d4 b c d g,2 c1 c4 d8 e f e f g
	f4 e d c8 bes c2 bes bes'4. c8 d c bes c d e f d ees2. bes4 d c8 bes c a bes c bes2 bes, bes bes4 a8 g f2 f'4 e8 d
	c4 d e f g a bes c \clef alto d e f g a2 g f4 e d c \clef varbaritone bes a g f ees8 d e f g f e d
	c8 bes c d e c d e d c b c d b c d g,1 r2 g'2 f4 e8 f g f e d c d ees c d c bes a g2 g'
	a2 bes4 c8 bes c bes a g a bes c a bes a g a bes c d bes c2 d d c d d,4 e8 f g a bes a g f e d
	c4. d8 ees4 c d e f g f e d c bes4. c8 d c bes a bes4. a bes c d bes c1 c d4. c8 bes c d e
	f8 e d e f g a f g2 ees2 f4. e8 f d e f bes,2 r4 bes'4 a a g g f d ees c d4. c8 bes4 a8 bes
	c4. bes8 c a bes c d e f e d c bes a g2 bes' a g f4 d ees c d8 c bes a bes c d bes c2. bes8 c
	d8 e f e d c d4 g, g'4. a8 bes a g f e d c1 b2 c1 g\breve
  }
}

bassusNotes = {
  \relative c' {
    \set Staff.instrumentName = #"Bassus"
    
    % incipit
    \clef "petrucci-f3"
    r\longa r\breve g1 \skip 1*1
    
    % main
    \clef bass
    r\longa r\breve g1 d'2 d d2. c4 bes2 g bes bes a1 g d d2 d ees2. f4 g2 g c,1 c d
    g2 c,1 c2 f2. e4 d2 c bes\breve r\breve r2 bes2 bes bes f' f c4 d e f g2 bes bes bes f g
    d1 g ees2. d4 c1 d
    g1 r2 g2 f g c, d g1 r\longa r1 r2 d2 g1 c,2 c d1 bes bes2 bes c1 c d2. e4 f2 f
    g2 ees f1 bes, r2 r4 g'4 f d ees c d2 bes c c d1 g r2 r4 g4 f d ees c d2 bes
    c2 c d d r2 g1 c, bes2 c1 g'\breve\fermata
%    \bar"||"
  }
}

#(set-global-staff-size 16)
%\paper { indent = #0 }
\score {
  \new StaffGroup = choirStaff <<
    \new Staff \with {
        alignAboveContext = #"3"
        \remove "Time_signature_engraver"
        \override KeySignature #'transparent = ##t 
        \override Clef #'transparent = ##t
        fontSize = #-2
        \override StaffSymbol #'staff-space = #(magstep -2)
        \override StaffSymbol #'thickness = #(magstep -2)
        \override VerticalAxisGroup #'staff-staff-spacing =
          #'(('basic-distance  . 1)
            (minimum-distance . 1)
            (padding . 0)
            (stretchability . 1))
      } {
        \key d \minor
        %\override TextScript #'padding = #3
        \stopStaff \skip 1*8
        \skip 1*3 \startStaff
        \ossiaCantusNotes
        \stopStaff
      }
    \new Voice  = "cantusNotes"  << \global \cantusNotes  >>
    \new Lyrics = "cantusLyrics" << \global \cantusLyrics >>
    \new Voice  = "altusNotes"   << \global \altusNotes   >>
    %\new Lyrics = "altusLyrics"  << \global \altusLyrics  >>
    \new Voice  = "tenorNotes"   << \global \tenorNotes   >>
    
    \new Staff \with {
        alignAboveContext = #"3"
        \remove "Time_signature_engraver"
        \override KeySignature #'transparent = ##t 
        \override Clef #'transparent = ##t
        fontSize = #-2
        \override StaffSymbol #'staff-space = #(magstep -2)
        \override StaffSymbol #'thickness = #(magstep -2)
        \override VerticalAxisGroup #'staff-staff-spacing =
          #'(('basic-distance  . 1)
            (minimum-distance . 1)
            (padding . 0)
            (stretchability . 1))
      } {
        \key d \minor
        %\override TextScript #'padding = #3
        \stopStaff \skip 1*8
        \skip 1*3 \startStaff
        \ossiaBassusNotes
        \stopStaff
      }
    \new Voice  = "bassusNotes"  << \global \bassusNotes  >>
  >>
  \layout {
    \context {
      \Score
      \override SpacingSpanner #'uniform-stretching = ##t
      %\remove Bar_engraver
      \override BarLine #'transparent = ##t
      \remove "System_start_delimiter_engraver"
    }
  }
}
