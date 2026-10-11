#!/bin/bash

RUTA="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
FILE="docker-compose.yml"

if [ -f "$FILE" ]; then
    echo "Cambiando a 2-Final"
    cp $RUTA/fases/2-Final.yml $RUTA/docker-compose.yml
else
    echo "Iniciando en 1-Arranque"
    cp $RUTA/fases/1-Arranque.yml $RUTA/docker-compose.yml
fi
