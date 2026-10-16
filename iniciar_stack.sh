#!/bin/bash


# Obtiene la ruta de la carpeta del script de forma directa
SCRIPT_DIR="$(dirname "$(realpath "$0")")"
COMPOSE_FILE="$SCRIPT_DIR/docker-compose.yml"
COMPOSEFASE1="$SCRIPT_DIR/fases/1-Arranque.yml"
CONPOSEFASE2=
STACK_NAME="mi_cluster"

# 1. Verificar si el archivo existe antes de hacer nada
if [ ! -f "$COMPOSE_FILE" ]; then
    echo "❌ Error: No se encuentra el archivo '$COMPOSE_FILE' en este directorio."
    exit 1
else
    #	Esto levantaria 
	if cmp -s "$COMPOSE_FILE" "$COMPOSEFASE1"; then
		# Despliegue
                docker stack deploy -c "$COMPOSE_FILE" "$STACK_NAME"
	else
		echo "❌ Son diferentes. Hago otra cosa..."
	fi    
fi

