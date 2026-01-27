#!/bin/bash -eu

export COLLECTION_OUTPUT="README.generated.md"

# Document collection and roles
echo "Running docsible collection generation"
DOCSIBLE_COLLECTION_TEMPLATE="./scripts/docsible-collection-template.md"
DOCSIBLE_ROLE_TEMPLATE="./scripts/docsible-role-template.md"
docsible --collection . --no-backup --graph --append \
  --md-collection-template ${DOCSIBLE_COLLECTION_TEMPLATE} \
  --md-template ${DOCSIBLE_ROLE_TEMPLATE} \
  --output $COLLECTION_OUTPUT \
  | tee -a collection-build.log
