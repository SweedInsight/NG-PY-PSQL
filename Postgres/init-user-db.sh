#!/bin/bash
set -e
echo "this script was exceuted"
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE DATABASE flask_jwt_auth;   
    CREATE DATABASE flask_jwt_auth_test;   
EOSQL

#CREATE USER docker;
#GRANT ALL PRIVILEGES ON DATABASE docker TO docker;