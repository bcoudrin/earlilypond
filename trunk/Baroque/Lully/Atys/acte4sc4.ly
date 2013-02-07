%%  acte4sc4.ly
%%  Copyright (c) 2013 Benjamin Coudrin <benjamin.coudrin@gmail.com>
%%                All Rights Reserved
%%
%%  Copyleft :
%%  This program is free software. It comes without any warranty, to
%%  the extent permitted by applicable law. You can redistribute it
%%  and/or modify it under the terms of the Do What The Fuck You Want
%%  To Public License, Version 2, as published by Sam Hocevar. See
%%  http://sam.zoy.org/wtfpl/COPYING for more details.

\version "2.14.2"

#(set-default-paper-size "a4")
#(set-global-staff-size 16)

\paper {
  line-width    = 188\mm
  left-margin   = 10\mm
  top-margin    = 10\mm
  bottom-margin = 20\mm
  ragged-last-bottom = ##t 
  ragged-bottom = ##f
  annotate-spacing = ##f
  page-breaking = #ly:page-turn-breaking
  #(define page-breaking ly:page-turn-breaking)
}

\layout {
  \context {
    \RemoveEmptyStaffContext
  }
}

\header {
  title = \markup \center-column {"ATYS" \concat {"Acte IV, Scene Quatri" \char ##x00EA "me" }}
  subtitle = \markup \center-column { "Sangaride, Atys" }
  composer =  \markup \right-column { "Jean-Baptiste Lully" \small "(1632-1687)" }
  tagline = ""
  copyright = \markup { "Copyright : " \char ##x00A9 " 2013 Benjamin Coudrin. Copyleft : released under WTFPL License" }
}

\include "../../../3rdParty/Viole/ornements-viole.ly"

ter = {
  \override Staff.TimeSignature #'style = #'single-digit
  \time 3/4
}

bin = {
  \override Staff.TimeSignature #'style = #'default
  \time 4/4
}

bla = {
  \override Staff.TimeSignature #'style = #'default
  \time 2/2
}

%% PREMIER DESSUS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
premdessus = {
  \clef french
  \key g \minor
  \ter
  \relative c''' {
    r4_\markup{\italic{Ritournelle}}
    g4. aes8			| % 1
    bes4 g4. g8			| % 2
    aes4 f4. f8			| % 3
    g4 ees f			| % 4
    \vxmordant d2 d4		| % 5
    r g4. g8			| % 6
    c,4 f4. f8			| % 7
    f4 d ees4.			  % 8
    d8 \vxmordant d4. c8	| % 9
    \break
    
    \autoBeamOff
    \clef soprano
    \bin
    r1 r2. r1 r1 r1 r1 r1 r2.
    r2. r2. r1 r1 r1 r2. r1
    r2. r2. r2. r1 r1
    \break
    
    r4 r8 ees8 \vxmordant d d d8. d16
    \ter g,4 c8 c16 bes a8. g16
    \bla fis4 f8 d' d4. d8
  }
}

lyrun = \lyricmode {
  % Ritournelle
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  Pour- quoy m'a- ban- don- ner
  pour une a- mour nou- vel- le!
  Ce n'est pas
}

%% SECOND DESSUS  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
secdessus = {
  \clef french
  \key g \minor
  \ter
  \relative c'' {
    r4_\markup{\italic{Ritournelle}}
    ees4. ees8 			| % 1
    d4 eis4. ees8		| % 2
    f4 d4. d8			| % 3
    ees4 c d			| % 4
    bis2 bes4			| % 5
    r c4. bes8			| % 6
    a4 d4. d8			| % 7
    d4 bis c4.			  % 8
    d8 \vxmordant bis4. c8	| % 9
    
    \autoBeamOff
    \clef alto
    \bin r2^\markup{\italic{Atys}}
    r8 ees,16 ees c8 c16 c
    \ter aes4. a16 c \vxmordant aes8 a16 g
    \bin \vxmordant g4 g r8 g16 g c8 c16 d
    ees4 ees \vxmordant g,8. g16 g8 a
    bes4 bes r8 d16 d bis8 bes16 c
    d4 d8. d16 ees4 ees8. f16
    \vxmordant d4
    
    \clef soprano
    r8^\markup{\italic{Sangaride}}
    bis'8 bes8. bes16 bes8. bes16
    \ter c4 g8 g16 g a8. bes16
    \vxmordant a8 a r c16 c c8 d16 ees
    f4 bes,8. bes16 bes8 bes16 a
    \bin bes4
    
    \clef alto
    f4^\markup{\italic{Atys}}
    bes,8. bes16 bes8. bes16
    \vxmordant g4
    
    \clef soprano
    r8^\markup{\italic{Sangaride}}
    bes'8 ees8. ees16 ees8. ees16
    \vxmordant c8 c r c
    \vxmordant aes8. a16 a8. c16
    \ter f,4 r8 f16 f bes8 bes16 bes
    \bin \vxmordant g4
    
    \clef alto
    ees8.^\markup{\italic{Atys}}
    g16 bis,4 bes8. c16
    \ter d4 d8 d16 d bis8. d16
    g,8 g
  
    \clef soprano
    ees''8^\markup{\italic{Sangaride}}
    ees16 d c8. bes16
    \vxmordant a4 a8. a16
    d8 d16 d
    \bin bis8 bes
    
    \clef alto
    g4^\markup{\italic{Atys}}
    
    \clef soprano
    bis8^\markup{\italic{Sangaride}}
    bes bes8. d16
    g,4
    
    \clef alto
    ees8.^\markup{\italic{Atys}} g,16
    aes4 a8. bes16
    g4 r8 g'8 \vxmordant f8. f16 f8. g16
    \ter ees4 ees8 ees16 d c8. bes16
    \bla \vxmordant a4 a8 r r2
  }
}

lyrdeux = \lyricmode {
  % Ritournelle
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  % Atys
  Qu'il sçait peu son mal- heur!
  Et qu'il est dé- plo- ra- ble!
  son a- mour mé- ri- toit
  un sort plus fa- vo- ra- ble:
  J'ay pi- tié de l'Er- reur
  dont son \markup{\concat{c \char ##x0153 ur}}
  s'est flat- té.
  
  % Sangaride
  E- par- gnez vous le soin
  \markup{\concat{d' \char ##x00EA t-}} re si
  pi- toy- a- ble,
  son a- mour ob- tien- dra
  ce qu'il a mé- ri- té.
  
  % Atys
  Dieux! qu'est- ce que j'en- tends!
  
  % Sangaride
  Qu'il faut que je me van- ge.
  Que J'ayme en- fin le Roy,
  Qu'il se- ra mon E- poux.
  
  % Atys
  San- ga- ride, eh d'où vient
  ce chan- ge- ment E- tran- ge!
  
  % Sangaride
  N'est- ce pas vous in- grat
  qui vou- lez que Je chan- ge!
  
  % Atys
  Moy!
  
  % Sangaride
  Quel- le tra- hi- son!
  
  % Atys
  Quel fu- nes- te cou- roux!
  Pour- quoy m'a- ban- don- ner
  pour une a- mour nou- vel- le!
}

%% BASSE CONTINUE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
bassefig = \figuremode {
  s2.| % 
  s4 <_+>2| %  
  <_->4 s2| % 
  s2 <6 _->4| % 
  <_+>2 s4| % 
  <5/>2 s4| % 
  <9>4 <8>2| % 
  <7 _+>2 s4| % 
  <_- 7>4 <_+>2| % 
  s1| % 
  <6- 4>2.| % 
  s1| % 
  s1| % 
  s2 <_+>| % 
  <5/> s| % 
  <_+> s| % 
  <6>4 <5/>2| % 
  s2 s8. <6 4>16| % 
  <6>2 <4>8 <3>| % 
  s1| % 
  s1| % 
  s2 <6 5>| % 
  <4> <3>4| % 
  s2 <6+>| % 
  <5/>2.| % 
  s2 <6 5>4| % 
  <4> <_+> s| % 
  <_+>1| % 
  <5>2 <4 2>4 <5/>| % 
  s2. <6 4/>4| % 
  s2 <6 5>4| % 
  <_+>1| % 
}

basse = {
  \clef bass
  \key g \minor
  \ter
  \relative c {
    c4 c'4. c8		| % 1
    g4 c4. c8		| % 2
    f,4 bes bes		| % 3
    ees, aes f		| % 4
    g2 f4		| % 5
    eis2 ees4		| % 6
    f2 d4		| % 7
    g2 c,4		| % 8
    f,4 g2		| % 9
    \bin c1 ~		| % 10
    \ter c2. ~		| % 11
    \bin c2 ~ c2 ~	| % 12
    c1			| % 13
    g'			| % 14
    bis,2 c		| % 15
    g g'		| % 16
    \ter eis4 ~ eis2	| % 17
    f2 ~ f8. [e16]
    d4. e8 f [f,]
    \bin bes1
    ees
    aes2 ~ aes
    \ter bes bes,4
    \bin ees2 d4. c8
    \ter bis2.
    c
    d2 ~ d4
    \bin g2. g8 [f]
    ees2 ees4 d
    ees4. ees8 bes'4 bis
    \ter c c,2
    \bla d1
  }
  \bar "|."
}


%% CONDUCTEUR     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new StaffGroup  <<
    \new Voice = "premdess" << \override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \premdessus >>
    \new Lyrics \lyricsto premdess { \lyrun }
    \new Voice = "secdess" << \override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \secdessus >>
    \new Lyrics \lyricsto secdess { \lyrdeux }
    \new Staff <<
      \override Staff.BarLine #'allow-span-bar = ##f
      #(set-accidental-style 'forget)
      \figuremode { \bassefig }
      \basse
    >>
 >>
}