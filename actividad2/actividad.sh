#!/bin/bash

# Leer la variable 
read -p "Ingrese su usuario " GITHUB_USER
# Consultar la URL
respuesta=$(curl -s "https://api.github.com/users/$GITHUB_USER")

nombre=$(echo "$respuesta" | jq -r '.name')
id=$(echo "$respuesta" | jq -r '.id')
creacion=$(echo "$respuesta" | jq -r '.created_at')

# Imprimir el mensaje con los datos obtenidos
echo "Hola $nombre. User ID: $id. Cuenta fue creada el: $creacion."

# Crear el archivo de log con la salida del mensaje
log_dir="tmp/$(date +'%d-%m-%Y')"
log_file="$log_dir/saludos.log"

mkdir -p "$log_dir"
echo "Hola $nombre. User ID: $id. Cuenta fue creada el: $creacion." >> "$log_file"