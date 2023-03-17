#!/bin/bash

KERNEL=$(uname -r)
HOSTNAME=$(hostname)
CPUNO=$(cat /proc/cpuinfo | grep "model name" | wc -l)
CPUMODEL=$(cat /proc/cpuinfo |grep "model name"|head -n1|cut -c14-)
MEMTOTAL=$(expr $(cat /proc/meminfo | grep MemTotal | tr -d ' ' |cut -d: f2| tr -d kB) / 1024) 
FILESYS=$(df -h|egrep -v '(tmpfs|udev)')
UPTIME=$(uptime -s)

clear
echo "==================="
echo "Relatório da máquina: $HOSTNAME"
echo "Data e Hora: $(date)"
echo "=================="
echo "Máquina Ativa desde $UPTIME"
echo
echo "Versão do Kernel: $KERNEL"
echo
echo "CPUs"
echo "Quantidade de CPUs/Core: $CPUNO"
echo "Modelo da CPU: $CPUMODEL"
echo
echo "Memória Total: $MEMTOTAL MB"
echo
echo "Partições: "
echo "$FILESYS"
echo
echo "=================="
