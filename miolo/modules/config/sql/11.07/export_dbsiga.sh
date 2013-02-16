sudo -u postgres pg_dump --port 5432 --format plain --schema-only --no-owner --create --disable-dollar-quoting --verbose dbsiga >"./schema.sql"
sudo -u postgres pg_dump --port 5432 --format plain --data-only --disable-triggers --column-inserts --disable-dollar-quoting --verbose dbsiga >"./dados.sql"

