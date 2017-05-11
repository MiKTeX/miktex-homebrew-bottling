#!/usr/bin/env sh

set -ev

mkdir "${TRAVIS_BUILD_DIR}/build"
cd "${TRAVIS_BUILD_DIR}/build"

if [ "${MIKTEX_NEXT}" = "yes" ]; then
    versionname=devel
else
    versionname=stable
fi

cmake .. \
      -DMIKTEX_VERSION=`brew info --json=v1 miktex-bare | jq ".[0].versions.${versionname}"`
