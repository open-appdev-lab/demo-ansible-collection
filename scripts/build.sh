#!/bin/bash -eu

# SEMVER_EXTRA_ASSETS=(
#   roles
#   playbooks
#   README.md
#   galaxy.yml
#   changelogs
#   CHANGELOG.rst
# )

PYTHON_DEPENDENCIES="ansible-core distlib antsibull-changelog docsible python-semantic-release"

# Install extra python dependencies if defined
if [ -n "${PYTHON_DEPENDENCIES}" ]; then
  # Set the pip version
  if [[ $(which pip3) ]]; then
      export PIP_EXEC=$(which pip3)
  elif [[ $(which pip) ]]; then
      export PIP_EXEC=$(which pip)
  else
      echo "Pip not found"
      exit 1
  fi
  $PIP_EXEC install ${PYTHON_DEPENDENCIES}
fi

# Update documentation using Docsible
. ./scripts/update-documentation.sh

# Update CHANGELOG.rst
. ./scripts/update-changelog.sh

# for i in "${SEMVER_EXTRA_ASSETS[@]}"; do
#   git add "$i" | tee -a collection-build.log
# done

ansible-galaxy collection build . | tee -a collection-build.log

# Stage all changes
git add .