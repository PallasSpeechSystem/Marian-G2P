# MarianG2P 

Conversor Grafema para Fonema utilizando tradução automática neural a partir do software MarianNMT. 

# Metodologia 

Decoder:

PALAVRA -> GRAFEMAS -> MODELO_NEURAL -> FONEMAS

Encoder:

PALAVRA -> GRAFEMAS + FONEMAS -> MarianNMT (Seq2Seq) -> MODELO_NEURAL


