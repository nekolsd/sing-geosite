#!/bin/bash

set -e -o pipefail

cd domain-set
git init
git config --local user.email "github-action@users.noreply.github.com"
git config --local user.name "GitHub Action"
git remote add origin https://github-action:$GITHUB_TOKEN@github.com/nekolsd/sing-geosite.git
git branch -M domain-set
git add .
git commit -m "Update domain-set"
git push -f origin domain-set
