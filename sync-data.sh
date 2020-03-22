#!/bin/bash

# DATABASE_URL required env variable

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

for f in $DIR/*.csv
do
    tablename=$(basename -- "$f")
    echo "Updating $tablename"
    psql "$DATABASE_URL" -c "truncate $f"
    psql "$DATABASE_URL" -c "\copy $tablename from $DIR/$tablename.csv  DELIMITER ',' CSV HEADER;"
done

echo "Done!"
