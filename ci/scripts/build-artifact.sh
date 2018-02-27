#!/bin/sh

PR_ID=$(git config --get pullrequest.id)
PR_AUTHOR=$(git log -n 1 --pretty=format:'%an')
TAG="draft."$(git rev-parse HEAD)

printf "**NOT FOR PRODUCTION**\nPR: #${PR_ID}, by ${PR_AUTHOR}\nDeploy with: \`${TAG}\`" > artifacts/body
printf ${TAG} > artifacts/hash

tar zcf artifacts/artifact.tgz -C master .
