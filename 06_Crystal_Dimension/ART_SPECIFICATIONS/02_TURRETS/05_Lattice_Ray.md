# Tourelle 5/7 — Lattice Ray

## Classement visuel

- Rang : **5 sur 7**
- Niveau de finition attendu : **Prestige**
- Critère principal : Modèle riche, détails uniques et énergie clairement visible.
- La montée en gamme doit être visible dans la taille du socle, le canon, le blindage et l'énergie.

## Direction du design

- Style du thème : facettes, prismes, géométrie flottante et résonance.
- Palette : violet cristal, cyan, rose énergie, blanc et indigo.
- Énergie et tirs : lumière prismatique.
- Silhouette : grande, rare, avec une mécanique ou une source d’énergie visible.
- Complexité conseillée : environ 35 pièces visuelles maximum avant optimisation.

## Statistiques de référence

- Clé Roblox/configuration : `LatticeRay`
- Damage : **1920000**
- Range : **40**
- FireRate : **1.52**
- Health : **1536000**
- Price : **1911074**
- Chance boutique : **30 %**

## Structure Roblox obligatoire

```text
LatticeRay
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

- Modèle complet : `LatticeRay.rbxm`
- Texture/SurfaceAppearance : `LatticeRay_Color.png` et cartes nécessaires
- Icône transparente : `LatticeRay_Icon.png`
- Projectile ou rayon : `LatticeRay_Projectile`
- Effet de tir : `LatticeRay_MuzzleFX`
- Effet d’impact : `LatticeRay_ImpactFX`
- Effet de destruction : `LatticeRay_DestroyFX`
- Son de tir : `LatticeRay_FireSound`

## Animations et comportement visuel

- La tête doit pouvoir pivoter sans traverser le socle.
- Le point `FireAttachment` doit être placé exactement à la sortie du canon.
- Ajouter un recul visible mais rapide.
- Prévoir un état inactif lisible et une réaction au tir.
- Les effets ne doivent jamais cacher la cible ou remplir tout l’écran.

## Critères obligatoires

- Reconnaissable par sa silhouette seule.
- Plus travaillée que la tourelle 4 et moins spectaculaire que la tourelle 6.
- Pivot, placement et portée testés dans Roblox Studio.
- Lisible sur mobile, vue du dessus et caméra éloignée.
- Aucun élément directement copié du jeu source ou d’une licence connue.
