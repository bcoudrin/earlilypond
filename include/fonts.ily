%%  fonts.ily
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

% Default fonts
\paper  {
  #(define fonts
    (set-global-fonts
      #:music "scorlatti"
      #:brace "scorlatti"
      #:roman "Century Schoolbook"
      #:sans "Nimbus Sans"
      #:typewriter "Luxi Mono"
      #:factor (/ staff-height pt 20)
  ))
}