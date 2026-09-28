Conversor Grafema para Fonema utilizando tradução automática neural a partir do software MarianNMT.

# Dataset

Esse repositória usar o projeto WikiPron para fornecer transcrições de palavras.

# Metodologia

É feito um pre-processamento para quebras as palavras em letras (grafemas). 

1. Grafemas (Source):
```
m a n t i m e n t o 
j u g u l a r 
e s p a r t a n o 
s i l a b a r 
e s c a r r a n c h a r 
o n t o l o g i c a m e n t e 
a r v o r e d o 
s u m á r i o 
m i l h e n t o s 
d o i d e i r a 
```

2. Fonemas (Target):
```
m ɐ̃ t͡ʃ i m ẽ t u
ʒ u ɡ u l a ɻ
e s p a ʁ t ɐ̃ n u
s i l a b a ɾ
e s k a ʁ ɐ̃ ʃ a
õ t o l ɔ ʒ i k a m ẽ t͡ʃ i
a ʁ v o ɾ e d u
s u m a ɾ j u
m i ʎ ẽ t o s
d o j d e j ɾ ɐ
```

## Decoder:

PALAVRA -> GRAFEMAS -> MODELO_NEURAL -> FONEMAS

## Encoder:

PALAVRA -> GRAFEMAS + FONEMAS -> MarianNMT (Seq2Seq) -> MODELO_NEURAL

Usando técnica de Sequence-to-Sequence (S2S) para transcrições de palavras. Os parâmetros usados foram retirados do seguinte artigo: (LatPhon: Lightweight Multilingual G2P for Romance Languages and English). Mas, aplicado para português brasileiro.

