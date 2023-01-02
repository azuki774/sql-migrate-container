# sql-migrate-git
The container is based on the geneius project ( https://github.com/rubenv/sql-migrate ) by rubenv.

## Usage
It executes `git clone ${GIT_REPO}` and `sql-migrate up -env=${MIGRATION_ENV}`.
The environment value is shown by compose files (See https://github.com/azuki774/sql-migrate-git/blob/master/deployment/compose-local.yml ).

Sample file for CI is here ( https://github.com/azuki774/sql-migrate-git/tree/master/test/migration ).

### From env option
Giving an ENTRYPOINT `["/scripts/main.sh", "--from-env"]` ( Default `["/scripts/main.sh"]` ), this works as from-env-mode. This option migrates based on enviroment values (`DB_USER`, `DB_PASS`, `DB_HOST`, `DB_NAME`, `DB_OPT`), without using `dbconfig.yml`. See https://github.com/azuki774/sql-migrate-git/blob/master/deployment/compose-local-fromenv.yml in detail.
