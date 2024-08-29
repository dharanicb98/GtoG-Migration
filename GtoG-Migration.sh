#!/bin/bash

# Script to migrate repositories from one GitHub account to another

# Author: dharanicb
# Date: 2024-08-29
# Time: 15:30 UTC

# Configuration
OLD_USERNAME="dharanicb"
NEW_USERNAME="dharanicb98"
NEW_PAT="Update-Your-PAT" # Replace with your new account PAT

# Temporary files for repository lists
OLD_REPOS_LIST="old_repos.txt"
NEW_REPOS_LIST="new_repos.txt"
MISSING_REPOS_LIST="missing_repos.txt"

# Fetch list of repository names from old account
echo "Fetching repository names from old account..."
curl -s "https://api.github.com/users/${OLD_USERNAME}/repos?per_page=100&page=1" | jq -r '.[].name' > $OLD_REPOS_LIST

# Check if there's a second page for old repos (if there are more than 100 repos)
curl -s "https://api.github.com/users/${OLD_USERNAME}/repos?per_page=100&page=2" | jq -r '.[].name' >> $OLD_REPOS_LIST

# Fetch list of repository names from new account
echo "Fetching repository names from new account..."
curl -s -H "Authorization: token ${NEW_PAT}" "https://api.github.com/user/repos?per_page=100&page=1" | jq -r '.[].name' > $NEW_REPOS_LIST

# Check if there's a second page for new repos (if there are more than 100 repos)
curl -s -H "Authorization: token ${NEW_PAT}" "https://api.github.com/user/repos?per_page=100&page=2" | jq -r '.[].name' >> $NEW_RE
