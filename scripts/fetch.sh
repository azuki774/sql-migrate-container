#!/bin/bash -ex

GIT_REPO=${GIT_REPO} # git@github.com:azuki774/sql-migrate-git.git
GIT_REPO_DIRNAME_TMP=${GIT_REPO##*/} # sql-migrate-git.git
GIT_REPO_DIRNAME=${GIT_REPO_DIRNAME_TMP%.*} # sql-migrate-git

git clone ${GIT_REPO}
cd ${GIT_REPO_DIRNAME}/${MIGRATION_DIR}
