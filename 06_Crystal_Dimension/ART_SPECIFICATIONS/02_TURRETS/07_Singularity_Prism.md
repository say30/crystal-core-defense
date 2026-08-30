# Tourelle 7/7 — Singularity Prism

## Classement visuel

- Rang : **7 sur 7**
- Niveau de finition attendu : **Ultime**
- Critère principal : Pièce maîtresse du thème, immédiatement reconnaissable et la plus belle.
- La montée en gamme doit être visible dans la taille du socle, le canon, le blindage et l'énergie.

## Direction du design

- Style du thème : facettes, prismes, géométrie flottante et résonance.
- Palette : violet cristal, cyan, rose énergie, blanc et indigo.
- Énergie et tirs : lumière prismatique.
- Silhouette : monumentale, unique et emblématique du thème.
- Complexité conseillée : environ 60 pièces visuelles maximum avant optimisation.

## Statistiques de référence

- Clé Roblox/configuration : `SingularityPrism`
- Damage : **4800000**
- Range : **45**
- FireRate : **1.28**
- Health : **2064000**
- Price : **8833940**
- Chance boutique : **10 %**

## Structure Roblox obligatoire

```text
SingularityPrism
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

- Modèle complet : `SingularityPrism.rbxm`
- Texture/SurfaceAppearance : `SingularityPrism_Color.png` et cartes nécessaires
- Icône transparente : `SingularityPrism_Icon.png`
- Projectile ou rayon : `SingularityPrism_Projectile`
- Effet de tir : `SingularityPrism_MuzzleFX`
- Effet d’impact : `SingularityPrism_ImpactFX`
- Effet de destruction : `SingularityPrism_DestroyFX`
- Son de tir : `SingularityPrism_FireSound`

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
