#!/bin/bash
set -e # Fail fast if any command errors

gitleaks git -f json -r $GITHUB_WORKSPACE/secret-detection-report.json $GITHUB_WORKSPACE
