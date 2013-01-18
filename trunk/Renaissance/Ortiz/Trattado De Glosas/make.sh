#!/bin/sh
rm libro2.pdf
lilypond-book --output out --pdf libro2.lytex
cd out
pdflatex libro2.tex
cp libro2.pdf ..
cd ..

