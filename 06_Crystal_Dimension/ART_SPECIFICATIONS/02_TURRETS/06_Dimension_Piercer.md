# Tourelle 6/7 — Dimension Piercer

## Classement visuel

- Rang : **6 sur 7**
- Niveau de finition attendu : **Épique**
- Critère principal : Silhouette exceptionnelle, effets animés et finition élevée.
- La montée en gamme doit être visible dans la taille du socle, le canon, le blindage et l'énergie.

## Direction du design

- Style du thème : facettes, prismes, géométrie flottante et résonance.
- Palette : violet cristal, cyan, rose énergie, blanc et indigo.
- Énergie et tirs : lumière prismatique.
- Silhouette : grande, rare, avec une mécanique ou une source d’énergie visible.
- Complexité conseillée : environ 45 pièces visuelles maximum avant optimisation.

## Statistiques de référence

- Clé Roblox/configuration : `DimensionPiercer`
- Damage : **3360000**
- Range : **42.5**
- FireRate : **1.4**
- Health : **1800000**
- Price : **4108809**
- Chance boutique : **20 %**

## Structure Roblox obligatoire

```text
DimensionPiercer
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

- Modèle complet : `DimensionPiercer.rbxm`
- Texture/SurfaceAppearance : `DimensionPiercer_Color.png` et cartes nécessaires
- Icône transparente : `DimensionPiercer_Icon.png`
- Projectile ou rayon : `DimensionPiercer_Projectile`
- Effet de tir : `DimensionPiercer_MuzzleFX`
- Effet d’impact : `DimensionPiercer_ImpactFX`
- Effet de destruction : `DimensionPiercer_DestroyFX`
- Son de tir : `DimensionPiercer_FireSound`

## Animations et comportement visuel

- La tête doit pouvoir pivoter sans traverser le socle.
- Le point `FireAttachment` doit être placé exactement à la sortie du canon.
- Ajouter un recul puissant et spectaculaire.
- Prévoir un état inactif lisible et une réaction au tir.
- Les effets ne doivent jamais cacher la cible ou remplir tout l’écran.

## Critères obligatoires

- Reconnaissable par sa silhouette seule.
- Plus travaillée que la tourelle 5 et moins spectaculaire que la tourelle 7.
- Pivot, placement et portée testés dans Roblox Studio.
- Lisible sur mobile, vue du dessus et caméra éloignée.
- Aucun élément directement copié du jeu source ou d’une licence connue.
