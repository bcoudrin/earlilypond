%%  format.ily
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

% Common includes
#(ly:set-option 'relative-includes #t)
\include "fonts.ily"
\include "titles.ily"

% Paper settings
#(set-default-paper-size "a4")
\paper {
  line-width    = 188\mm
  left-margin   = 10\mm
  top-margin    = 10\mm
  bottom-margin = 20\mm
  ragged-last-bottom = ##t 
  ragged-bottom = ##f
  annotate-spacing = ##f
  #(define page-breaking ly:minimal-breaking)
}

% Layout commons
layoutCommonsWithEmptyStaves = \layout {
  #(layout-set-staff-size 17)
  \context {
    \Score
    \override SpacingSpanner #'uniform-stretching = ##t
    \override Stem #'neutral-direction = #1
  }
  \context {
    \Voice
    \override TupletNumber #'stencil = ##f 
    \override TupletBracket #'bracket-visibility = ##f 
  }
  \context { 
    \Staff
    \override BassFigure #'font-size = #-1
  } 
  \context { 
    \Lyrics
    \override LyricText #'font-size = #0
    \override LyricText #'font-shape = #'italic
  } 
}

layoutCommons = \layout {
  \layoutCommonsWithEmptyStaves
  \context {
    \RemoveEmptyStaffContext
    \override VerticalAxisGroup #'remove-first = ##t 
  }
}
