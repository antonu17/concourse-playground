#!/bin/sh

set -ex

VERSION=$(cat version/version)

echo "${MESSAGE}" "${VERSION}"
