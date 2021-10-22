#!/usr/bin/env sh
# see https://github.com/kvz/bash3boilerplate

# Exit on error. Append "|| true" if you expect an error.
set -o errexit

GITHUB_ENV=${GITHUB_ENV:-/tmp/github_env}

echo "ANSWER<<EOF" >> $GITHUB_ENV
howdoi $@ >> $GITHUB_ENV
echo "EOF" >> $GITHUB_ENV