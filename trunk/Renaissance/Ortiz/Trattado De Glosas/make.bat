C:\Python27\python.exe "C:\Program Files (x86)\LilyPond\usr\bin\lilypond-book.py" --output=out --pdf trattado_de_glosas.lytex
cd out
del trattado_de_glosas.pdf
"C:\Program Files (x86)\MiKTeX 2.9\miktex\bin\pdflatex.exe" trattado_de_glosas
copy trattado_de_glosas.pdf ..
cd ..