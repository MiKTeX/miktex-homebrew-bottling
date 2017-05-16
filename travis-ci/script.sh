#!/usr/bin/env sh

set -ev

cd "${TRAVIS_BUILD_DIR}/build"

if [ "${MIKTEX_NEXT}" = "yes" ]; then
    installoptions=--devel
fi

brew install --verbose --build-bottle ${installoptions} miktex
brew bottle --verbose miktex
