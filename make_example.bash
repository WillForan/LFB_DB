#!/usr/bin/env bash

#
# add all the example sql csv files to the db
#

set -e
cd $(dirname $0)
sql() { sqlite3 lite.db $@; }
for f in sql/example/*.csv; do
   table=$(basename $f .csv)
   # skip if already have stuff
   [ -n "$(sql "select * from $table")" ] && echo "$table not empty" && continue
   # otherwise populate with example
   printf ".mode csv\n.import '$f' $table" | sql
done
