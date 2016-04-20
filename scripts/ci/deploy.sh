#!/bin/bash
set -e

here=$(cd "$(dirname "${BASH_SOURCE}")"; pwd -P)
. $here/_env.sh

echo -n "Uploading $PROJECT $BUILD_TAG... "
gsutil -q cp manifest.json gs://release.kelproject.com/distro/$BUILD_TAG/manifest.json && echo "done"
