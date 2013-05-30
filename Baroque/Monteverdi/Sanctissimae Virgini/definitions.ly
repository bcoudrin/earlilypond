% Cover page
titlePageMarkup = \markup \abs-fontsize #10 \column {
  \vspace #6
  \fill-line { \fontsize #8 \fromproperty #'header:composer }
  \vspace #1
  \fill-line { \fontsize #4 \fromproperty #'header:date }
  \vspace #6
  \fill-line { \fontsize #10 \bold \fromproperty #'header:title }
  \vspace #1
  \fill-line { \postscript #"-20 0 moveto 40 0 rlineto stroke" }
  \vspace #5
  \fill-line { \bold \fontsize #6 \rounded-box \fromproperty #'header:instrument }
  \vspace #8
  \fill-line { \fromproperty #'header:publisher }
}