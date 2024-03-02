#!/bin/bash

rm -rf out
mkdir out

args=(
  --pdf-engine=xelatex
#   -f markdown+implicit_figures
  --lua-filter=filters/strikeout.lua
  --lua-filter=filters/underline.lua
  -V block-headings
  --template=templates/eisvogel.tex
  --listings
  --toc
  --toc-depth=3
  --highlight-style=pygments
#   --number-sections
#   --include-in-header=templates/header.tex
#   --include-before-body=templates/before-body.tex
#   --include-after-body=templates/after-body.tex
  --metadata-file=metadata.yaml
  --citeproc
#   --bibliography=references.bib
#   --csl=templates/ieee.csl
#   --verbose
)

pandoc src/*.md -o out/theory-1-4.pdf ${args[@]}
