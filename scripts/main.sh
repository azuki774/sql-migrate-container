#!/bin/bash -e
BIN=/usr/local/bin/sql-migrate
ARGS=$1

# GIT_MIGRATION_DIR
# MIGRATION_ENV
# MIGRATION_MODE

if [ -z ${MIGRATION_MODE} ]; then
    MIGRATION_MODE=up
fi

echo "migrate start"
echo "Git Repository: ${GIT_REPO}"
echo "migrate directory: ${GIT_MIGRATION_DIR}"

mkdir -p /work && cd /work/

source /scripts/fetch.sh # download from git

if [ "${ARGS}" == "--from-env" ]; then
    MIGRATION_ENV="fromenv"
    source /scripts/makeconf.sh
fi

echo "migrate env: ${MIGRATION_ENV}"
echo "migrate mode: ${GIT_MIGRATION_DIR}"

${BIN} ${MIGRATION_MODE} -env=${MIGRATION_ENV}
