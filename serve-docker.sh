#!/usr/bin/env bash

# Fail on unset variables and command errors
set -eu -o pipefail # -x: is for debugging

docker run --rm -it -p 8000:8000 -v ${PWD}:/docs peaceiris/mkdocs-material
