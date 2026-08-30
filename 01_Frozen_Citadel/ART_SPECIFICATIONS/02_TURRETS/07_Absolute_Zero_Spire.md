# Tourelle 7/7 — Absolute Zero Spire

## Classement visuel

- Rang : **7 sur 7**
- Niveau de finition attendu : **Ultime**
- Critère principal : Pièce maîtresse du thème, immédiatement reconnaissable et la plus belle.
- La montée en gamme doit être visible dans la taille du socle, le canon, le blindage et l'énergie.

## Direction du design

- Style du thème : glace, neige, runes et métal froid.
- Palette : bleu glacier, blanc, cyan lumineux et gris acier.
- Énergie et tirs : cyan glacé.
- Silhouette : monumentale, unique et emblématique du thème.
- Complexité conseillée : environ 60 pièces visuelles maximum avant optimisation.

## Statistiques de référence

- Clé Roblox/configuration : `AbsoluteZeroSpire`
- Damage : **1000**
- Range : **45**
- FireRate : **1.28**
- Health : **430**
- Price : **19754**
- Chance boutique : **10 %**

## Structure Roblox obligatoire

```text
AbsoluteZeroSpire
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

- Modèle complet : `AbsoluteZeroSpire.rbxm`
- Texture/SurfaceAppearance : `AbsoluteZeroSpire_Color.png` et cartes nécessaires
- Icône transparente : `AbsoluteZeroSpire_Icon.png`
- Projectile ou rayon : `AbsoluteZeroSpire_Projectile`
- Effet de tir : `AbsoluteZeroSpire_MuzzleFX`
- Effet d’impact : `AbsoluteZeroSpire_ImpactFX`
- Effet de destruction : `AbsoluteZeroSpire_DestroyFX`
- Son de tir : `AbsoluteZeroSpire_FireSound`

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
