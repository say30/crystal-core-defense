# Tourelle 3/7 — Harpoon Launcher

## Classement visuel

- Rang : **3 sur 7**
- Niveau de finition attendu : **Détaillé**
- Critère principal : Davantage de volume, matériau secondaire et petit effet.
- La montée en gamme doit être visible dans la taille du socle, le canon, le blindage et l'énergie.

## Direction du design

- Style du thème : bois naval, bronze, cordages, corail et trésors.
- Palette : brun, bronze, rouge pirate, sable et bleu océan.
- Énergie et tirs : or maudit ou éclair bleu.
- Silhouette : moyenne, plus armée et renforcée.
- Complexité conseillée : environ 18 pièces visuelles maximum avant optimisation.

## Statistiques de référence

- Clé Roblox/configuration : `HarpoonLauncher`
- Damage : **1050**
- Range : **35**
- FireRate : **1.76**
- Health : **1260**
- Price : **3359**
- Chance boutique : **60 %**

## Structure Roblox obligatoire

```text
HarpoonLauncher
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

- Modèle complet : `HarpoonLauncher.rbxm`
- Texture/SurfaceAppearance : `HarpoonLauncher_Color.png` et cartes nécessaires
- Icône transparente : `HarpoonLauncher_Icon.png`
- Projectile ou rayon : `HarpoonLauncher_Projectile`
- Effet de tir : `HarpoonLauncher_MuzzleFX`
- Effet d’impact : `HarpoonLauncher_ImpactFX`
- Effet de destruction : `HarpoonLauncher_DestroyFX`
- Son de tir : `HarpoonLauncher_FireSound`

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
