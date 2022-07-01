psql postgres -c "CREATE USER dart_pg_user WITH LOGIN SUPERUSER INHERIT CREATEDB CREATEROLE NOREPLICATION PASSWORD 'insecure_password'"
psql postgres -c "CREATE DATABASE dart_pg_example WITH OWNER = dart_pg_user ENCODING = 'UTF8' CONNECTION LIMIT = -1;"
psql dart_pg_example -f db/items-table.sql 