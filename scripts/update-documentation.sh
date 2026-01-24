#!/bin/bash -eu

# Document roles
# for dir in $(ls -d roles/*); do
#   echo "Running docsible role generation against ${dir}"
#   if [ -f ${dir}/docsible-role-template.md ]; then
#     DOCSIBLE_TEMPLATE="${dir}/docsible-role-template.md"
#   else
#     DOCSIBLE_TEMPLATE="./scripts/docsible-role-template.md"
#   fi
#   docsible --md-template ${DOCSIBLE_TEMPLATE} \
#     --role ${dir} --no-backup --append | tee -a collection-build.log
#   git add ${dir}/README.md
# done

# Document collection and roles
echo "Running docsible collection generation"
DOCSIBLE_COLLECTION_TEMPLATE="./scripts/docsible-collection-template.md"
DOCSIBLE_ROLE_TEMPLATE="./scripts/docsible-role-template.md"
docsible --collection . --no-backup --graph --append \
  --md-collection-template ${DOCSIBLE_COLLECTION_TEMPLATE} \
  --md-template ${DOCSIBLE_ROLE_TEMPLATE} \
  | tee -a collection-build.log
git add README.md
for dir in $(ls -d roles/*); do
  git add ${dir}/README.md
done
