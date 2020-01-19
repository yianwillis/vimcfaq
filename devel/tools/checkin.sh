#!/bin/bash

ROOT="$(git rev-parse --show-toplevel)"
[[ $# == 1 ]] || exit 1
git commit -a -m "$1"
git push
cd "$ROOT"/devel/doc
make
git co gh-pages
cp *.html ../../doc
git commit -a -m "$1"
git push
git co master
