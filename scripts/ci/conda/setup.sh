#!/bin/bash

conda install -c conda-forge conda-build -y
pwd
ls
git clone https://github.com/hobu/pdal-feedstock.git


cd pdal-feedstock
git checkout main
cat > recipe/recipe_clobber.yaml <<EOL
source:
  path: ../../
  url:
  sha256:
  patches:

build:
  number: 2112
EOL

ls recipe
