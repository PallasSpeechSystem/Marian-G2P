#!/bin/bash

read -p "Digite seu texto: " texto
echo $texto
echo "Resultado: "
for palavras in $(echo $texto | tr " " "\n"); do
fonemas=$(echo $palavras | gawk '{print tolower($0)}' | sed 's/./& /g' | ./tools/marian-mnt/build/marian-decoder --vocabs dic/grafeme_vocab.yaml dic/phoneme_vocab.yaml --quiet -m models/s2s.npz)

if [ -z "$resultado" ]; then
	resultado=$(echo $fonemas)
else
	resultado=$(echo $resultado pau $fonemas)
fi

done

echo $resultado
