#!/bin/bash

set -e

if [ "$#" -lt 2 ]; then
    echo "usage <VERSION> <SOURCE_REVISION_ID> <EXTRA_ARGS>"
    exit 1
fi

VERSION=$1
SOURCE_REVISION_ID=$2
EXTRA_ARGS=$3

sh ./distribution/macos/create_macos_build_ava.sh . ./temp ./output ./distribution/macos/entitlements.xml $VERSION $SOURCE_REVISION_ID release $EXTRA_ARGS