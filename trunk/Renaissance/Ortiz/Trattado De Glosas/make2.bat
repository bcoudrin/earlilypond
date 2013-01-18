copy lys out
C:\Python27\python.exe "C:\Program Files (x86)\LilyPond\usr\bin\lilypond-book.py" --output=out --pdf libro2.lytex
cd out
del libro2.pdf
"C:\Program Files (x86)\MiKTeX 2.9\miktex\bin\pdflatex.exe" libro2
copy libro2.pdf ..
cd ..