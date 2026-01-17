Desafio Técnico: Monitoramento de Infraestrutura e Gestão de dados (ESIG Group)

Este repositório abriga a solução criada para automatizar o monitoramento de serviços e a gestão de cópias de segurança no ambiente Linux (Debian).

Estrutura do Projeto e Funções

Abaixo estão detalhados os ficheiros que compõem a solução e a finalidade técnica de cada um:

monitora_servicos.sh: Script principal de automação. Ele verifica a saúde das instâncias Tomcat10 e JBoss. Caso validado em execução, o script identifica os serviços "Ativos" com o respectivo tempo de atividade (uptime) e serviços "PARADOS". Em caso de paragem, ele aguarda 1 minuto e realiza a reinicialização automática da instância.

backup_banco.sh: Script que automatiza a criação de cópias de segurança (dump) do PostgreSQL, gerando o ficheiro de dados estruturado para garantir a integridade da informação.

restaura_banco.sh: Script responsável pela recuperação do banco de dados a partir dos ficheiros .sql. Ele permite restaurar as tabelas e os registros de forma rápida em caso de falhas.

backpup_db.sql: Ficheiro que armazena os logs do backup e contem a estrutura e os dados da tabela teste.

FUNCIONALIDADES DEMONSTRADAS

1. Alta disponibilidade: O sistema de monitoramento foi testado com êxito, mostrando sua habilidade de identificar instâncias offline e realizar processos de recuperação automática após o período de segurança configurado (1 minuto).

2. Gestão de dados e segurança
   
- Estabelecimento de procedimentos de Backup e Restore.

- Ajuste das permissões de execução com o comando chmod para assegurar a segurança operacional dos scripts.

- Durante o processo de restauração de dados, ocorrem conflitos de integridade, como duplicação de chaves primárias.

COMO EXECUTAR

1. Dê permissão aos scrpts usando o comando: chmod +x *.sh

2. Inicie o monitoramento usando o comando: ./monitora_servicos.sh

3. Para restaurar o banco de dados use o comando: ./restaura_banco.sh backup_db.sql
