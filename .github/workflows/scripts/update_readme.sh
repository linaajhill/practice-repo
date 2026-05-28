#!/bin/bash

FREQ_RESULT=$1
GITHUB_USER=$2
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

# Append result to README
echo -e "\n[$GITHUB_USER Vowels: $FREQ_RESULT | Checked on: $TIMESTAMP]" >> README.md

# Configure Git to use GitHub Actions identity
git config --global user.name "github-actions"
git config --global user.email "github-actions@users.noreply.github.com"

# Stage, commit, and push back up
git add README.md
git commit -m "Update README with vowel frequency results"
git push