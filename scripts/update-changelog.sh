#!/bin/bash -eu

LAST_VERSION=$(semantic-release version --print-last-released)
NEXT_VERSION=$(semantic-release version --print)

# Create fragments based on commit messages
. ./scripts/create-changelog-fragments.sh $LAST_VERSION $NEXT_VERSION

# Run antsibull-changelog release to update changelog and delete fragments
antsibull-changelog release --version $NEXT_VERSION | tee -a collection-build.log
