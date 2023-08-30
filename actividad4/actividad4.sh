#!/bin/bash
SLEEP_INTERVAL=5  # Intervalo en segundos 

imprimir_saludo() {
    echo "Hola! La fecha actual es: $(date)"
}
#Imprimir una vez
imprimir_saludo
# Ciclo para el script más complejo
while true; do
    imprimir_saludo
    sleep $SLEEP_INTERVAL
done
