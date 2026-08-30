# Tourelle 6/7 — Royal Candy Beam

## Classement visuel

- Rang : **6 sur 7**
- Niveau de finition attendu : **Épique**
- Critère principal : Silhouette exceptionnelle, effets animés et finition élevée.
- La montée en gamme doit être visible dans la taille du socle, le canon, le blindage et l'énergie.

## Direction du design

- Style du thème : sucre, chocolat, glaçage, bonbons ronds et spirales.
- Palette : rose, cyan, jaune citron, chocolat et crème.
- Énergie et tirs : arc-en-ciel sucré.
- Silhouette : grande, rare, avec une mécanique ou une source d’énergie visible.
- Complexité conseillée : environ 45 pièces visuelles maximum avant optimisation.

## Statistiques de référence

- Clé Roblox/configuration : `RoyalCandyBeam`
- Damage : **22400**
- Range : **42.5**
- FireRate : **1.4**
- Health : **12000**
- Price : **111412**
- Chance boutique : **20 %**

## Structure Roblox obligatoire

```text
RoyalCandyBeam
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

- Modèle complet : `RoyalCandyBeam.rbxm`
- Texture/SurfaceAppearance : `RoyalCandyBeam_Color.png` et cartes nécessaires
- Icône transparente : `RoyalCandyBeam_Icon.png`
- Projectile ou rayon : `RoyalCandyBeam_Projectile`
- Effet de tir : `RoyalCandyBeam_MuzzleFX`
- Effet d’impact : `RoyalCandyBeam_ImpactFX`
- Effet de destruction : `RoyalCandyBeam_DestroyFX`
- Son de tir : `RoyalCandyBeam_FireSound`

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
