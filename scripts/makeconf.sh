#!/bin/bash -e

DBCONFFILE="./dbconfig.yml"

rm -f ${DBCONFFILE}

echo "make config dbconfig.yml"
echo "${MIGRATION_ENV}:" >> ${DBCONFFILE}
echo "  dialect: mysql" >> ${DBCONFFILE}
echo "  dir: ./" >> ${DBCONFFILE}

echo "dsn: ${DB_USER}:<password>@tcp(${DB_HOST})/${DB_NAME}${DB_OPT}"
echo "  datasource: ${DB_USER}:${DB_PASS}@tcp(${DB_HOST})/${DB_NAME}${DB_OPT}" >> ${DBCONFFILE}
