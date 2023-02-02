#!/bin/bash
mkdir pares
mkdir impares
while read numero; do
    if [[ $(($numero%2)) == 0 ]];then
        pares=$((pares+1))
        mkdir "pares/$numero"
    else
        impares=$((impares+1))
        mkdir "impares/$numero"
    fi
done < ficheros_scripts/numeros.txt

echo "Hay $pares numeros pares"
echo "Hay $impares numeros impares"