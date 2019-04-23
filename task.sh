#!/usr/bin/env bash

# Fail on unset variables and command errors
set -e -o pipefail # -x: is for debugging

DOCKER_IMAGE="peaceiris/mkdocs-material"
DOCS_DIR="/root"

function help() {
    cat << EOS
Usage: ./task.sh [OPTION]
    serve,   -s, --serve     mkdocs serve
    build,   -b, --build     mkdocs build
    deploy,  -d, --deploy    mkdocs gh-deploy
    version, -V, -version    mkdocs --version
    help,    -h, --help      mkdocs --help
    pull,    -p, --pull      docker pull
EOS
}

if [ "$1" = "" ]; then
    help && exit 0
fi

case "$1" in
    "serve" | "--serve" | "-s")
        docker run --rm -it -v "${PWD}:${DOCS_DIR}" -p 8000:8000 "${DOCKER_IMAGE}"
        ;;
    "build" | "--build" | "-b")
        docker run --rm -it -v "${PWD}:${DOCS_DIR}" "${DOCKER_IMAGE}" build
        ;;
    "deploy" | "--deploy" | "-d")
        docker run --rm -it -v "${PWD}:${DOCS_DIR}" "${DOCKER_IMAGE}" gh-deploy
        ;;
    "version" | "-V" | "--version")
        docker run --rm -it "${DOCKER_IMAGE}" --version
        ;;
    "help" | "--help" | "-h")
        docker run --rm -it "${DOCKER_IMAGE}" --help
        ;;
    "pull" | "--pull" | "-p")
        docker pull "${DOCKER_IMAGE}"
        ;;
    *)
        help
        ;;
esac

exit 0
