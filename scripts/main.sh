#!/bin/bash -ex
BIN=/usr/local/bin/sql-migrate

GIT_REPO=${GIT_REPO}
MIGRATION_DIR=${MIGRATION_DIR}
MIGRATION_ENV=${MIGRATION_ENV}
MIGRATION_MODE=${MIGRATION_MODE}

if [ MIGRATION_MODE != "" ]; then
    MIGRATION_MODE=up
fi

echo "migrate start"
echo "Git Repository: ${GIT_REPO}"
echo "migrate directory: ${MIGRATION_DIR}"
echo "migrate env: ${MIGRATION_ENV}"
echo "migrate mode: ${MIGRATION_MODE}"

mkdir -p /work && cd /work/
git clone ${GIT_REPO}
cd ${MIGRATION_DIR}
