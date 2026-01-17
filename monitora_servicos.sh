#!/bin/bash

SERVICOS=("tomcat10" "jboss")

for SERV in "${SERVICOS[@]}"; do
	if systemctl is-active --quiet $SERV; then
		STATUS="Ativo"
		UPTIME=$(systemctl show -p ActiveEnterTimestamp $SERV | cut -d'=' -f2)
		echo "Serviço $SERV: $STATUS | Online desde: $UPTIME" [cite: 25]
	else
		echo "Serviço $SERV: PARADO. Aguardando 1 minuto..." [cite: 24, 25]
		sleep 60
		if ! systemctl is-active --quiet $SERV; then
			echo "Reiniciando $SERV após 1min de inatividade..." [cite: 24]
			sudo systemctl start $SERV
		fi
	fi
done
