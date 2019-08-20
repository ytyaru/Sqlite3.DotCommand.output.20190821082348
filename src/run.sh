SRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

sqlite3 :memory: \
".output out.txt" \
"select 'AAA';"
cat out.txt

sqlite3 :memory: \
".output out.txt" \
"select 'BBB';" \
".output stdout" \
"select 'CCC';"
cat out.txt

