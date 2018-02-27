#!/bin/sh

cd master
PR_ID=$(git config --get pullrequest.id)
PR_AUTHOR=$(git log -n 1 --pretty=format:'%an')
COMMITSHA=$(git rev-parse HEAD)
TAG="draft."$(git rev-parse HEAD)

cd ..
printf "**NOT FOR PRODUCTION**\nPR: #${PR_ID}, by ${PR_AUTHOR}\nDeploy with: \`${TAG}\`" > artifacts/body
printf ${TAG} > artifacts/hash
printf ${COMMITSHA} > artifacts/target_commit

tar zcf artifacts/artifact.tgz -C master .
