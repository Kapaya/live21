set -e

pandoc \
  --filter conditional-render \
  --filter pandoc-crossref \
  --citeproc \
  --bibliography=references-bibtex.bib\
  -s \
  -o \
  paper-acm.tex \
  --template=templates/sigconf.pandoc \
  --natbib \
  --metadata=format:pdf \
  paper.md

pdflatex paper-acm.tex
bibtex paper-acm
pdflatex -interaction=batchmode paper-acm.tex
pdflatex -interaction=batchmode paper-acm.tex
