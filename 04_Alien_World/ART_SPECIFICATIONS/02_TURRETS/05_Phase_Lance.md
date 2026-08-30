# Tourelle 5/7 — Phase Lance

## Classement visuel

- Rang : **5 sur 7**
- Niveau de finition attendu : **Prestige**
- Critère principal : Modèle riche, détails uniques et énergie clairement visible.
- La montée en gamme doit être visible dans la taille du socle, le canon, le blindage et l'énergie.

## Direction du design

- Style du thème : organismes extraterrestres, spores, carapaces et reliques.
- Palette : vert bioluminescent, violet, magenta, turquoise et noir spatial.
- Énergie et tirs : violet ou vert biologique.
- Silhouette : grande, rare, avec une mécanique ou une source d’énergie visible.
- Complexité conseillée : environ 35 pièces visuelles maximum avant optimisation.

## Statistiques de référence

- Clé Roblox/configuration : `PhaseLance`
- Damage : **68000**
- Range : **40**
- FireRate : **1.52**
- Health : **54400**
- Price : **172467**
- Chance boutique : **30 %**

## Structure Roblox obligatoire

```text
PhaseLance
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

- Modèle complet : `PhaseLance.rbxm`
- Texture/SurfaceAppearance : `PhaseLance_Color.png` et cartes nécessaires
- Icône transparente : `PhaseLance_Icon.png`
- Projectile ou rayon : `PhaseLance_Projectile`
- Effet de tir : `PhaseLance_MuzzleFX`
- Effet d’impact : `PhaseLance_ImpactFX`
- Effet de destruction : `PhaseLance_DestroyFX`
- Son de tir : `PhaseLance_FireSound`

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
