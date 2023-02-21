mysql -u root -p -N -e 'show databases' | while read dbname; do mysqldump --complete-insert --force -u root -p  "$dbname" > "$dbname".sql; [[ $? -eq 0 ]] && gzip "$dbname".sql; done

mysqldump --complete-insert --force -u root -p  "mlm_116" > "mlm_116".sql;