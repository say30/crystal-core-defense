# Tourelle 1/7 — Rover Sentry

## Classement visuel

- Rang : **1 sur 7**
- Niveau de finition attendu : **Simple**
- Critère principal : Silhouette très simple, peu de pièces, aucun effet permanent.
- La montée en gamme doit être visible dans la taille du socle, le canon, le blindage et l'énergie.

## Direction du design

- Style du thème : technologie coloniale, titane, poussière et panneaux industriels.
- Palette : rouge martien, orange, blanc habitat, gris titane et bleu solaire.
- Énergie et tirs : plasma bleu ou orange.
- Silhouette : compacte, légère et immédiatement compréhensible.
- Complexité conseillée : environ 8 pièces visuelles maximum avant optimisation.

## Statistiques de référence

- Clé Roblox/configuration : `RoverSentry`
- Damage : **45000**
- Range : **30**
- FireRate : **2**
- Health : **90000**
- Price : **26797**
- Chance boutique : **100 %**

## Structure Roblox obligatoire

```text
RoverSentry
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

- Modèle complet : `RoverSentry.rbxm`
- Texture/SurfaceAppearance : `RoverSentry_Color.png` et cartes nécessaires
- Icône transparente : `RoverSentry_Icon.png`
- Projectile ou rayon : `RoverSentry_Projectile`
- Effet de tir : `RoverSentry_MuzzleFX`
- Effet d’impact : `RoverSentry_ImpactFX`
- Effet de destruction : `RoverSentry_DestroyFX`
- Son de tir : `RoverSentry_FireSound`

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
