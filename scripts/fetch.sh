#!/bin/bash -e

GIT_REPO=${GIT_REPO} # git@github.com:azuki774/sql-migrate-git.git
GIT_REPO_DIRNAME_TMP=${GIT_REPO##*/} # sql-migrate-git.git
GIT_REPO_DIRNAME=${GIT_REPO_DIRNAME_TMP%.*} # sql-migrate-git

GIT_ARGS="${GIT_REPO}"

if [ -n "${GIT_REPO_TAG}" ]; then
    GIT_ARGS="${GIT_ARGS} -b ${GIT_REPO_TAG}"
fi

git clone ${GIT_ARGS}
cd ${GIT_REPO_DIRNAME}/${GIT_MIGRATION_DIR}
