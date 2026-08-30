# Tourelle 3/7 — Bioacid Projector

## Classement visuel

- Rang : **3 sur 7**
- Niveau de finition attendu : **Détaillé**
- Critère principal : Davantage de volume, matériau secondaire et petit effet.
- La montée en gamme doit être visible dans la taille du socle, le canon, le blindage et l'énergie.

## Direction du design

- Style du thème : organismes extraterrestres, spores, carapaces et reliques.
- Palette : vert bioluminescent, violet, magenta, turquoise et noir spatial.
- Énergie et tirs : violet ou vert biologique.
- Silhouette : moyenne, plus armée et renforcée.
- Complexité conseillée : environ 18 pièces visuelles maximum avant optimisation.

## Statistiques de référence

- Clé Roblox/configuration : `BioacidProjector`
- Damage : **29750**
- Range : **35**
- FireRate : **1.76**
- Health : **35700**
- Price : **37310**
- Chance boutique : **60 %**

## Structure Roblox obligatoire

```text
BioacidProjector
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

- Modèle complet : `BioacidProjector.rbxm`
- Texture/SurfaceAppearance : `BioacidProjector_Color.png` et cartes nécessaires
- Icône transparente : `BioacidProjector_Icon.png`
- Projectile ou rayon : `BioacidProjector_Projectile`
- Effet de tir : `BioacidProjector_MuzzleFX`
- Effet d’impact : `BioacidProjector_ImpactFX`
- Effet de destruction : `BioacidProjector_DestroyFX`
- Son de tir : `BioacidProjector_FireSound`

## Animations et comportement visuel

- La tête doit pouvoir pivoter sans traverser le socle.
- Le point `FireAttachment` doit être placé exactement à la sortie du canon.
- Ajouter un recul visible mais rapide.
- Prévoir un état inactif lisible et une réaction au tir.
- Les effets ne doivent jamais cacher la cible ou remplir tout l’écran.

## Critères obligatoires

- Reconnaissable par sa silhouette seule.
- Plus travaillée que la tourelle 2 et moins spectaculaire que la tourelle 4.
- Pivot, placement et portée testés dans Roblox Studio.
- Lisible sur mobile, vue du dessus et caméra éloignée.
- Aucun élément directement copié du jeu source ou d’une licence connue.
