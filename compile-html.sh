set -e

 pandoc \
  --filter pandoc-crossref \
  --filter conditional-render \
  --citeproc \
  --metadata=format:html \
  -s \
  --number-sections \
  -o index.html \
  --css basic.css \
  --toc \
  --toc-depth=1 \
  --variable=toc-title:"Contents" \
  --template=templates/pandoc-template-html.html \
  --bibliography=references-biblatex.bib \
  paper.md