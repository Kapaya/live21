set -e

pandoc \
  --filter conditional-render \
  --filter pandoc-crossref \
  -s \
  -o \
  paper.tex \
  --natbib \
  --template=ieee.pandoc \
  --metadata=format:pdf \
  paper.md

pdflatex paper.tex
bibtex paper
pdflatex -interaction=batchmode paper.tex
pdflatex -interaction=batchmode paper.tex
cp paper.pdf index.pdf