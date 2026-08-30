# Tourelle 4/7 — Colony Missile Pod

## Classement visuel

- Rang : **4 sur 7**
- Niveau de finition attendu : **Avancé**
- Critère principal : Blindage ou ornements visibles, silhouette plus imposante.
- La montée en gamme doit être visible dans la taille du socle, le canon, le blindage et l'énergie.

## Direction du design

- Style du thème : technologie coloniale, titane, poussière et panneaux industriels.
- Palette : rouge martien, orange, blanc habitat, gris titane et bleu solaire.
- Énergie et tirs : plasma bleu ou orange.
- Silhouette : moyenne, plus armée et renforcée.
- Complexité conseillée : environ 25 pièces visuelles maximum avant optimisation.

## Statistiques de référence

- Clé Roblox/configuration : `ColonyMissilePod`
- Damage : **225000**
- Range : **37.5**
- FireRate : **1.64**
- Health : **238500**
- Price : **266318**
- Chance boutique : **40 %**

## Structure Roblox obligatoire

```text
ColonyMissilePod
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

- Modèle complet : `ColonyMissilePod.rbxm`
- Texture/SurfaceAppearance : `ColonyMissilePod_Color.png` et cartes nécessaires
- Icône transparente : `ColonyMissilePod_Icon.png`
- Projectile ou rayon : `ColonyMissilePod_Projectile`
- Effet de tir : `ColonyMissilePod_MuzzleFX`
- Effet d’impact : `ColonyMissilePod_ImpactFX`
- Effet de destruction : `ColonyMissilePod_DestroyFX`
- Son de tir : `ColonyMissilePod_FireSound`

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
