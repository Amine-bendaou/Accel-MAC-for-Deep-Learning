# Tuto MicroBlaze : Communication RAM-FPGA pour traitement de valeurs flottantes

## Contexte

Bienvenue dans ce tutoriel ! Ici, on va explorer comment utiliser un processeur **MicroBlaze** pour communiquer entre la RAM et un FPGA, afin de stocker et traiter un plus grand nombre de valeurs flottantes. Ce travail s’inscrit dans la continuité de ma première partie de stage, où j’ai conçu des blocs optimisés avec **Flopoco** pour effectuer des opérations de somme, multiplication et MAC en **float16** directement sur le FPGA.

Dans la première partie, toutes les opérations se faisaient uniquement avec la **BRAM** du FPGA. Cela fonctionne bien pour un petit nombre de valeurs, mais on est limité par la taille de la BRAM. L’objectif de cette nouvelle étape est de **pouvoir traiter plus de valeurs en utilisant la RAM externe**, en laissant le MicroBlaze gérer la communication entre le côté logiciel (soft) et matériel (hard) du FPGA.  

Concrètement, on va :  
- Concevoir la partie **hardware** avec les blocs flottants existants et intégrer la RAM pour stocker tes données.  
- Développer la partie **software** pour piloter le MicroBlaze et assurer la communication entre les valeurs stockées en RAM et le FPGA.  
- Optimiser le traitement de données flottantes pour dépasser les limites de la BRAM seule.  

Ce tuto est pensé pour être progressif : on commence par comprendre le **hardware**, puis on passe à la partie **software**, en t’expliquant clairement chaque étape et chaque choix de conception.

---
