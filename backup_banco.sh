#!/bin/bash
pg_dump -U postgres -h localhost meu_banco > backup_db.sql
echo "Backup realizado com sucesso!"
