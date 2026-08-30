# Tourelle 1/7 — Snowbolt Turret

## Classement visuel

- Rang : **1 sur 7**
- Niveau de finition attendu : **Simple**
- Critère principal : Silhouette très simple, peu de pièces, aucun effet permanent.
- La montée en gamme doit être visible dans la taille du socle, le canon, le blindage et l'énergie.

## Direction du design

- Style du thème : glace, neige, runes et métal froid.
- Palette : bleu glacier, blanc, cyan lumineux et gris acier.
- Énergie et tirs : cyan glacé.
- Silhouette : compacte, légère et immédiatement compréhensible.
- Complexité conseillée : environ 8 pièces visuelles maximum avant optimisation.

## Statistiques de référence

- Clé Roblox/configuration : `SnowboltTurret`
- Damage : **50**
- Range : **30**
- FireRate : **2**
- Health : **100**
- Price : **200**
- Chance boutique : **100 %**

## Structure Roblox obligatoire

```text
SnowboltTurret
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

- Modèle complet : `SnowboltTurret.rbxm`
- Texture/SurfaceAppearance : `SnowboltTurret_Color.png` et cartes nécessaires
- Icône transparente : `SnowboltTurret_Icon.png`
- Projectile ou rayon : `SnowboltTurret_Projectile`
- Effet de tir : `SnowboltTurret_MuzzleFX`
- Effet d’impact : `SnowboltTurret_ImpactFX`
- Effet de destruction : `SnowboltTurret_DestroyFX`
- Son de tir : `SnowboltTurret_FireSound`

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
