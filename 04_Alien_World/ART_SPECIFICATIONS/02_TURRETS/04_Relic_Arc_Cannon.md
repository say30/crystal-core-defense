# Tourelle 4/7 — Relic Arc Cannon

## Classement visuel

- Rang : **4 sur 7**
- Niveau de finition attendu : **Avancé**
- Critère principal : Blindage ou ornements visibles, silhouette plus imposante.
- La montée en gamme doit être visible dans la taille du socle, le canon, le blindage et l'énergie.

## Direction du design

- Style du thème : organismes extraterrestres, spores, carapaces et reliques.
- Palette : vert bioluminescent, violet, magenta, turquoise et noir spatial.
- Énergie et tirs : violet ou vert biologique.
- Silhouette : moyenne, plus armée et renforcée.
- Complexité conseillée : environ 25 pièces visuelles maximum avant optimisation.

## Statistiques de référence

- Clé Roblox/configuration : `RelicArcCannon`
- Damage : **42500**
- Range : **37.5**
- FireRate : **1.64**
- Health : **45050**
- Price : **80217**
- Chance boutique : **40 %**

## Structure Roblox obligatoire

```text
RelicArcCannon
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

- Modèle complet : `RelicArcCannon.rbxm`
- Texture/SurfaceAppearance : `RelicArcCannon_Color.png` et cartes nécessaires
- Icône transparente : `RelicArcCannon_Icon.png`
- Projectile ou rayon : `RelicArcCannon_Projectile`
- Effet de tir : `RelicArcCannon_MuzzleFX`
- Effet d’impact : `RelicArcCannon_ImpactFX`
- Effet de destruction : `RelicArcCannon_DestroyFX`
- Son de tir : `RelicArcCannon_FireSound`

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
