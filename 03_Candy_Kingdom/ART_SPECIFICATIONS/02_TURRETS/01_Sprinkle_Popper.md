# Tourelle 1/7 — Sprinkle Popper

## Classement visuel

- Rang : **1 sur 7**
- Niveau de finition attendu : **Simple**
- Critère principal : Silhouette très simple, peu de pièces, aucun effet permanent.
- La montée en gamme doit être visible dans la taille du socle, le canon, le blindage et l'énergie.

## Direction du design

- Style du thème : sucre, chocolat, glaçage, bonbons ronds et spirales.
- Palette : rose, cyan, jaune citron, chocolat et crème.
- Énergie et tirs : arc-en-ciel sucré.
- Silhouette : compacte, légère et immédiatement compréhensible.
- Complexité conseillée : environ 8 pièces visuelles maximum avant optimisation.

## Statistiques de référence

- Clé Roblox/configuration : `SprinklePopper`
- Damage : **1600**
- Range : **30**
- FireRate : **2**
- Health : **3200**
- Price : **2425**
- Chance boutique : **100 %**

## Structure Roblox obligatoire

```text
SprinklePopper
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

- Modèle complet : `SprinklePopper.rbxm`
- Texture/SurfaceAppearance : `SprinklePopper_Color.png` et cartes nécessaires
- Icône transparente : `SprinklePopper_Icon.png`
- Projectile ou rayon : `SprinklePopper_Projectile`
- Effet de tir : `SprinklePopper_MuzzleFX`
- Effet d’impact : `SprinklePopper_ImpactFX`
- Effet de destruction : `SprinklePopper_DestroyFX`
- Son de tir : `SprinklePopper_FireSound`

## Animations et comportement visuel

- La tête doit pouvoir pivoter sans traverser le socle.
- Le point `FireAttachment` doit être placé exactement à la sortie du canon.
- Ajouter un recul très léger.
- Prévoir un état inactif lisible et une réaction au tir.
- Les effets ne doivent jamais cacher la cible ou remplir tout l’écran.

## Critères obligatoires

- Reconnaissable par sa silhouette seule.
- Plus travaillée que la tourelle précédente inexistante et moins spectaculaire que la tourelle 2.
- Pivot, placement et portée testés dans Roblox Studio.
- Lisible sur mobile, vue du dessus et caméra éloignée.
- Aucun élément directement copié du jeu source ou d’une licence connue.
