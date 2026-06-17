#!/usr/bin/env bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "osem" <<-EOSQL
	CREATE DATABASE osem;
	GRANT ALL PRIVILEGES ON DATABASE osem TO "$POSTGRES_USER";
EOSQL
