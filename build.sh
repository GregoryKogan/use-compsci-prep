#!/bin/bash

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
cd $SCRIPTPATH

# Check if eisvogel template exists
if [ ! -f ./templates/eisvogel.tex ]; then
  if [ ! -d ./templates ]; then
    mkdir ./templates
  fi
  echo "Templates not found. Downloading..."
  curl https://raw.githubusercontent.com/Wandmalfarbe/pandoc-latex-template/master/eisvogel.tex -o ./templates/eisvogel.tex
fi

# Remove old output
if [ -d ./out ]; then
  rm -rf ./out
fi
mkdir out

# Build output
args=(
  --pdf-engine=xelatex
  # -f markdown+implicit_figures
  --lua-filter=filters/strikeout.lua
  --lua-filter=filters/underline.lua
  -V block-headings
  --template=templates/eisvogel.tex
  --listings
  --toc
  --toc-depth=3
  --highlight-style=pygments
  # --number-sections
  # --include-in-header=templates/header.tex
  # --include-before-body=templates/before-body.tex
  # --include-after-body=templates/after-body.tex
  --metadata-file=metadata.yaml
  --citeproc
  --bibliography=references.bib
  # --csl=templates/ieee.csl
  # --verbose
)

pandoc src/*.md -o out/theory.pdf ${args[@]}

cd - > /dev/null
