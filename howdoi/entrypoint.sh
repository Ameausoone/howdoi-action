#!/usr/bin/env sh
# see https://github.com/kvz/bash3boilerplate

# Exit on error. Append "|| true" if you expect an error.
set -o errexit

GITHUB_ENV=${GITHUB_ENV:-/tmp/github_env}

ANSWER="$(howdoi $@)"
echo "ANSWER<<EOF" >> $GITHUB_ENV
echo "${ANSWER}" >> $GITHUB_ENV
echo "EOF" >> $GITHUB_ENV

echo "$ANSWER"