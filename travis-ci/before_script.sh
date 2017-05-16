#!/usr/bin/env sh

set -ev

mkdir "${TRAVIS_BUILD_DIR}/build"
cd "${TRAVIS_BUILD_DIR}/build"

if [ "${MIKTEX_NEXT}" = "yes" ]; then
    versionname=devel
else
    versionname=stable
fi

miktexversion=`brew info --json=v1 miktex | jq --raw-output ".[0].versions.${versionname}"`
cmake .. -DMIKTEX_VERSION="${miktexversion}"
