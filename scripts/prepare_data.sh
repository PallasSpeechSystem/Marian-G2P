#!/bin/bash

cut -f1 datasets/wikipron/data/scrape/tsv/por_latn_bz_broad_filtered.tsv > /tmp/words.dic
cut -f2 datasets/wikipron/data/scrape/tsv/por_latn_bz_broad_filtered.tsv > /tmp/phones.dic

cat /tmp/words.dic | gawk '{print tolower($0)}' | sed 's/./& /g' > /tmp/grafemes.dic

paste /tmp/grafemes.dic /tmp/phones.dic > dic/clear.dic

python3 scripts/prepare_data.py

echo "Create vocabs..."
./tools/marian-mnt/build/marian-vocab < /tmp/grafemes.dic > grafeme_vocab.yaml
./tools/marian-mnt/build/marian-vocab < /tmp/phones.dic > phoneme_vocab.yaml

echo "Create symbols_file for SentencePiece"

cat dic/clear.dic | tr "\t" " " |tr " " "\n" | sort | uniq  | sed -e "1d" > symbols_file
