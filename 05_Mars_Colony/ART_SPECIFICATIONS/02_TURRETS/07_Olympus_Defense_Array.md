# Tourelle 7/7 — Olympus Defense Array

## Classement visuel

- Rang : **7 sur 7**
- Niveau de finition attendu : **Ultime**
- Critère principal : Pièce maîtresse du thème, immédiatement reconnaissable et la plus belle.
- La montée en gamme doit être visible dans la taille du socle, le canon, le blindage et l'énergie.

## Direction du design

- Style du thème : technologie coloniale, titane, poussière et panneaux industriels.
- Palette : rouge martien, orange, blanc habitat, gris titane et bleu solaire.
- Énergie et tirs : plasma bleu ou orange.
- Silhouette : monumentale, unique et emblématique du thème.
- Complexité conseillée : environ 60 pièces visuelles maximum avant optimisation.

## Statistiques de référence

- Clé Roblox/configuration : `OlympusDefenseArray`
- Damage : **900000**
- Range : **45**
- FireRate : **1.28**
- Health : **387000**
- Price : **2646765**
- Chance boutique : **10 %**

## Structure Roblox obligatoire

```text
OlympusDefenseArray
├── Stand
│   ├── éléments visuels de la base
│   ├── PlacementBox
│   └── RangePart
├── Head
│   ├── éléments visuels mobiles
│   └── FireAttachment
└── FireSound
```

## Fichiers artistiques à produire

- Modèle complet : `OlympusDefenseArray.rbxm`
- Texture/SurfaceAppearance : `OlympusDefenseArray_Color.png` et cartes nécessaires
- Icône transparente : `OlympusDefenseArray_Icon.png`
- Projectile ou rayon : `OlympusDefenseArray_Projectile`
- Effet de tir : `OlympusDefenseArray_MuzzleFX`
- Effet d’impact : `OlympusDefenseArray_ImpactFX`
- Effet de destruction : `OlympusDefenseArray_DestroyFX`
- Son de tir : `OlympusDefenseArray_FireSound`

## Animations et comportement visuel

- La tête doit pouvoir pivoter sans traverser le socle.
- Le point `FireAttachment` doit être placé exactement à la sortie du canon.
- Ajouter un recul puissant et spectaculaire.
- Prévoir un état inactif lisible et une réaction au tir.
- Les effets ne doivent jamais cacher la cible ou remplir tout l’écran.

## Critères obligatoires

- Reconnaissable par sa silhouette seule.
- Plus travaillée que la tourelle 6.
- Pivot, placement et portée testés dans Roblox Studio.
- Lisible sur mobile, vue du dessus et caméra éloignée.
- Aucun élément directement copié du jeu source ou d’une licence connue.
