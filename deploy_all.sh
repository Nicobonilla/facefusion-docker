#!/bin/bash

# Buscar todos los archivos docker-compose en el directorio actual y subdirectorios
for compose_file in $(find . -name "docker-compose*.yml"); do
    echo "Desplegando $compose_file"
    docker-compose -f $compose_file up -d
done
