#!/bin/bash -e
BIN=/usr/local/bin/sql-migrate

# MIGRATION_DIR
# MIGRATION_ENV
# MIGRATION_MODE

if [ -z ${MIGRATION_MODE} ]; then
    MIGRATION_MODE=up
fi

echo "migrate start"
echo "Git Repository: ${GIT_REPO}"
echo "migrate directory: ${MIGRATION_DIR}"
echo "migrate env: ${MIGRATION_ENV}"
echo "migrate mode: ${MIGRATION_MODE}"

mkdir -p /work && cd /work/

source /scripts/fetch.sh # download from git

${BIN} ${MIGRATION_MODE} -env=${MIGRATION_ENV}
