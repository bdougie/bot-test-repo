#!/bin/sh -l

# shellcheck disable=SC2046 disable=SC2048 disable=SC2086
echo $(jq '.commits | length' "${GITHUB_EVENT_PATH}")
if git diff-index --quiet HEAD~$(jq '.commits | length' "${GITHUB_EVENT_PATH}") $*; then
  echo "Changes in $*, proceeding"
else
  echo "No changes in $*, stopping" && echo "ignore:$*" >> "$HOME/ignore"
  return 1
fi
