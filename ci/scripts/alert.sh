#!/bin/sh

set -e

VERSION=$(cat version/version)

printf "${MESSAGE}" "${VERSION}"
printf "${NEW_MESSAGE}" "${VERSION}"
