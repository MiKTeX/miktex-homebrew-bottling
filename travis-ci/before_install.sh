#!/usr/bin/env sh

set -ev

brew update
brew outdated cmake || brew upgrade cmake
( brew ls -1 | grep -w jq ) || brew install jq

brew tap miktex/miktex
