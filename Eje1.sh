#!/bin/bash
read -p "numero" X
while read nombre; do
  # Crear el directorio principal para cada nombre
  mkdir "$nombre"

  # Crear los subdirectorios personal
  for ((i=1; i<=$X; i++)); do
    mkdir "$nombre/personal$i"
  done
done < ficheros_scripts/nombres.txt