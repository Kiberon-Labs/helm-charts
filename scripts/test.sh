#!/bin/sh
set -e
for dir in charts/*/; do
  helm dependency list "$dir" 2> /dev/null \
    | tail -n +2 \
    | sed '1d;$d' \
    | awk '{ print "helm repo add "$1" "$3 }' \
    | while read -r cmd; do
      repo_name=$(echo "$cmd" | awk '{print $4}')
      if ! helm repo list | grep -q "$repo_name"; then
        eval "$cmd"
      else
        echo "Repository $repo_name already exists"
      fi
    done
done
echo "Updating repos"
helm repo update

ct install --config ct.yaml