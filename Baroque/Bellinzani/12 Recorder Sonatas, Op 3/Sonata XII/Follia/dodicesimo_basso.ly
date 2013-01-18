%%  dodicesimo_basso.ly
%%  Copyright (c) 2011 Benjamin Coudrin <benjamin.coudrin@gmail.com>
%%                All Rights Reserved
%%
%%  Copyleft :
%%  This program is free software. It comes without any warranty, to
%%  the extent permitted by applicable law. You can redistribute it
%%  and/or modify it under the terms of the Do What The Fuck You Want
%%  To Public License, Version 2, as published by Sam Hocevar. See
%%  http://sam.zoy.org/wtfpl/COPYING for more details.

\time 3/4
\relative c {
  r16 d'[cis d] d,[d' e, d'] f,[d' d, d']
  cis,8[e] a[g] a[g]
  f16[d' cis d] d,[d' e, d'] f,[d' d, d']
  e,8[g] c[bes] c[bes]
%  \clef tenor
  \clef alto
  a16[f' e f] f,[f' g, f'] a,[f' f, f']
  \clef bass
  e,8[g] c[bes] a[g]
  f16[d' cis d] f,[d' cis d] bes,[bes' a g]
  a,8[e'] a[g] a[g]
  f16[d' cis d] d,[d' e, d'] f,[d' d, d']
  cis,8[e] a[g] a[g]
  f16[d' cis d] d,[d' e, d'] f,[d' d, d']
  e,8[g] c[bes] c[bes]
%  \clef tenor
  \clef alto
  a16[f' e f] f,[f' g, f'] a,[f' f, f']
  \clef bass
  e,8[g] c[bes] a[g]
  f16[d' cis d] g,[d' cis d] a[d cis d]
  d,2. 
}