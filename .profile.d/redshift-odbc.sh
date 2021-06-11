#!/bin/bash

export ODBCSYSINI=${HOME}/.apt/usr/lib/redshift/odbc/conf/

echo "[redshift]
Description=RedshiftDB
Driver=RedshiftDSIIDriver
Locale=en-US
PORT=5439
SSL=on
CLIENT_SESSION_KEEP_ALIVE=true
uid=${REDSHIFT_USERNAME}
pwd=${REDSHIFT_PASSWORD}
server=${REDSHIFT_SERVER}
database=${REDSHIFT_DATABASE}
" > ${ODBCSYSINI}/odbc.ini
