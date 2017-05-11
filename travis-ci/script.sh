#!/usr/bin/env sh

set -ev

cd "${TRAVIS_BUILD_DIR}/build"

if [ "${MIKTEX_NEXT}" = "yes" ]; then
    installoptions=--devel
fi

brew install --verbose --build-bottle ${installoptions} miktex-bare
brew bottle --verbose miktex-bare
