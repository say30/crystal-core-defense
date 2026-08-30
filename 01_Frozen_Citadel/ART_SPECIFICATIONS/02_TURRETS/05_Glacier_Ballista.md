# Tourelle 5/7 — Glacier Ballista

## Classement visuel

- Rang : **5 sur 7**
- Niveau de finition attendu : **Prestige**
- Critère principal : Modèle riche, détails uniques et énergie clairement visible.
- La montée en gamme doit être visible dans la taille du socle, le canon, le blindage et l'énergie.

## Direction du design

- Style du thème : glace, neige, runes et métal froid.
- Palette : bleu glacier, blanc, cyan lumineux et gris acier.
- Énergie et tirs : cyan glacé.
- Silhouette : grande, rare, avec une mécanique ou une source d’énergie visible.
- Complexité conseillée : environ 35 pièces visuelles maximum avant optimisation.

## Statistiques de référence

- Clé Roblox/configuration : `GlacierBallista`
- Damage : **400**
- Range : **40**
- FireRate : **1.52**
- Health : **320**
- Price : **4274**
- Chance boutique : **30 %**

## Structure Roblox obligatoire

```text
GlacierBallista
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

- Modèle complet : `GlacierBallista.rbxm`
- Texture/SurfaceAppearance : `GlacierBallista_Color.png` et cartes nécessaires
- Icône transparente : `GlacierBallista_Icon.png`
- Projectile ou rayon : `GlacierBallista_Projectile`
- Effet de tir : `GlacierBallista_MuzzleFX`
- Effet d’impact : `GlacierBallista_ImpactFX`
- Effet de destruction : `GlacierBallista_DestroyFX`
- Son de tir : `GlacierBallista_FireSound`

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
