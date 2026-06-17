#!/usr/bin/env bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname featmap_production <<-EOSQL
	CREATE DATABASE featmap_production;
	GRANT ALL PRIVILEGES ON DATABASE featmap_production TO "$POSTGRES_USER";
EOSQL
