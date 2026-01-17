#!/bin/bash
BACKUP_FILE=$1
export PGPASSWORD='123456'
echo "Restaurando banco de dados..."
psql -U postgres -h localhost -d meu_banco -f backup_db.sql
unset PGPASSWORD
echo "Restauração concluída!"
