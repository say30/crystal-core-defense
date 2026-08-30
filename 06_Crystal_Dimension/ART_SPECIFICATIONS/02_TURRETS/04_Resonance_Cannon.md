# Tourelle 4/7 — Resonance Cannon

## Classement visuel

- Rang : **4 sur 7**
- Niveau de finition attendu : **Avancé**
- Critère principal : Blindage ou ornements visibles, silhouette plus imposante.
- La montée en gamme doit être visible dans la taille du socle, le canon, le blindage et l'énergie.

## Direction du design

- Style du thème : facettes, prismes, géométrie flottante et résonance.
- Palette : violet cristal, cyan, rose énergie, blanc et indigo.
- Énergie et tirs : lumière prismatique.
- Silhouette : moyenne, plus armée et renforcée.
- Complexité conseillée : environ 25 pièces visuelles maximum avant optimisation.

## Statistiques de référence

- Clé Roblox/configuration : `ResonanceCannon`
- Damage : **1200000**
- Range : **37.5**
- FireRate : **1.64**
- Health : **1272000**
- Price : **888872**
- Chance boutique : **40 %**

## Structure Roblox obligatoire

```text
ResonanceCannon
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

- Modèle complet : `ResonanceCannon.rbxm`
- Texture/SurfaceAppearance : `ResonanceCannon_Color.png` et cartes nécessaires
- Icône transparente : `ResonanceCannon_Icon.png`
- Projectile ou rayon : `ResonanceCannon_Projectile`
- Effet de tir : `ResonanceCannon_MuzzleFX`
- Effet d’impact : `ResonanceCannon_ImpactFX`
- Effet de destruction : `ResonanceCannon_DestroyFX`
- Son de tir : `ResonanceCannon_FireSound`

## Animations et comportement visuel

- La tête doit pouvoir pivoter sans traverser le socle.
- Le point `FireAttachment` doit être placé exactement à la sortie du canon.
- Ajouter un recul visible mais rapide.
- Prévoir un état inactif lisible et une réaction au tir.
- Les effets ne doivent jamais cacher la cible ou remplir tout l’écran.

## Critères obligatoires

- Reconnaissable par sa silhouette seule.
- Plus travaillée que la tourelle 3 et moins spectaculaire que la tourelle 5.
- Pivot, placement et portée testés dans Roblox Studio.
- Lisible sur mobile, vue du dessus et caméra éloignée.
- Aucun élément directement copié du jeu source ou d’une licence connue.
