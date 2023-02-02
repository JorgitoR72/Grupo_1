#!/bin/bash
touch par.txt
touch impar.txt
while read numero; do
    if [[ $(($numero%2)) == 0 ]];then
        pares=$((pares+1))
        echo $numero >> par.txt
    else
        impares=$((impares+1))
        echo $numero >> impar.txt
    fi
done < ficheros_scripts/numeros.txt

echo "Hay $pares numeros pares"
echo "Hay $impares numeros impares"