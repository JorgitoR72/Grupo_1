#!/bin/bash
linux_usuario=0
windows_usuario=0
linux_procesos=0
windows_procesos=0

while read line; do

# Extraer valores de usuario, sistema operativo y procesos
usuario=$(echo $line | awk '{print $1}')
sisOp=$(echo $line | awk '{print $2}')
procesos=$(echo $line | awk '{print $3}')

# Verificar si el sistema operativo es Linux o Windows
if [ "$sisOp" == "Linux" ]; then
# Incrementar la cantidad de usuario con Linux
((linux_usuario++))
# Incrementar la cantidad total de procesos de Linux
((linux_procesos+=procesos))
elif [ "$sisOp" == "Windows" ]; then
# Incrementar la cantidad de usuario con Windows
((windows_usuario++))
# Incrementar la cantidad total de procesos de Windows
((windows_procesos+=procesos))
fi
done < ficheros_scripts/listado.txt

# Imprimir resultado
echo "Linux -> $linux_usuario $linux_procesos"
echo "Windows -> $windows_usuario $windows_procesos"