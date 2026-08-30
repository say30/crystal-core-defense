# Tourelle 2/7 — Quartz Repeater

## Classement visuel

- Rang : **2 sur 7**
- Niveau de finition attendu : **Soigné**
- Critère principal : Silhouette claire, quelques détails caractéristiques.
- La montée en gamme doit être visible dans la taille du socle, le canon, le blindage et l'énergie.

## Direction du design

- Style du thème : facettes, prismes, géométrie flottante et résonance.
- Palette : violet cristal, cyan, rose énergie, blanc et indigo.
- Énergie et tirs : lumière prismatique.
- Silhouette : compacte, légère et immédiatement compréhensible.
- Complexité conseillée : environ 12 pièces visuelles maximum avant optimisation.

## Statistiques de référence

- Clé Roblox/configuration : `QuartzRepeater`
- Damage : **480000**
- Range : **32.5**
- FireRate : **1.88**
- Health : **744000**
- Price : **192292**
- Chance boutique : **80 %**

## Structure Roblox obligatoire

```text
QuartzRepeater
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

- Modèle complet : `QuartzRepeater.rbxm`
- Texture/SurfaceAppearance : `QuartzRepeater_Color.png` et cartes nécessaires
- Icône transparente : `QuartzRepeater_Icon.png`
- Projectile ou rayon : `QuartzRepeater_Projectile`
- Effet de tir : `QuartzRepeater_MuzzleFX`
- Effet d’impact : `QuartzRepeater_ImpactFX`
- Effet de destruction : `QuartzRepeater_DestroyFX`
- Son de tir : `QuartzRepeater_FireSound`

## Animations et comportement visuel

- La tête doit pouvoir pivoter sans traverser le socle.
- Le point `FireAttachment` doit être placé exactement à la sortie du canon.
- Ajouter un recul très léger.
- Prévoir un état inactif lisible et une réaction au tir.
- Les effets ne doivent jamais cacher la cible ou remplir tout l’écran.

## Critères obligatoires

- Reconnaissable par sa silhouette seule.
- Plus travaillée que la tourelle 1 et moins spectaculaire que la tourelle 3.
- Pivot, placement et portée testés dans Roblox Studio.
- Lisible sur mobile, vue du dessus et caméra éloignée.
- Aucun élément directement copié du jeu source ou d’une licence connue.
