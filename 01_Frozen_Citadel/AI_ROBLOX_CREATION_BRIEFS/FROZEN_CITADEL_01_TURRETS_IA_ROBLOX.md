# Frozen Citadel — Création des 7 tourelles avec l'IA Roblox

## Mission

Créer sept nouvelles apparences de tourelles Frozen Citadel, classées du rang 1 au rang 7. Utiliser une tourelle fonctionnelle existante uniquement comme **gabarit technique**.

## Règle technique obligatoire

Pour chaque rang :

1. Dupliquer le modèle complet d'une tourelle fonctionnelle existante.
2. Renommer la copie avec l'identifiant indiqué dans le tableau.
3. Conserver sans modification les scripts, valeurs, `FireSound`, `Attachments`, pivots, soudures, contraintes, `PlacementBox`, `RangePart` et mécanisme de rotation ou de tir.
4. Conserver la séparation technique `Head` et `Stand` lorsqu'elle est utilisée par le système.
5. Remplacer uniquement les pièces visuelles contenues dans `Head` et `Stand`.
6. Le canon doit pointer dans le même axe que le canon du gabarit et les Attachments de projectile.
7. Tester la rotation de la tête et le départ du projectile après chaque remplacement.

Les modèles précédemment créés ne doivent pas être installés dans la collection active. Ils peuvent être consultés comme références visuelles seulement.

## Direction artistique commune

- Style Roblox stylisé, professionnel, propre et lisible sur mobile.
- Formes lisses et cohérentes : éviter l'impression de cubes, cylindres ou plaques simplement assemblés.
- Palette : blanc neige, bleu glacier, cyan lumineux, bleu profond et petites touches de métal froid.
- Les cristaux déjà créés servent de langage visuel : pointes facettées, noyaux lumineux et progression de prestige.
- Chaque rang possède une silhouette différente et immédiatement reconnaissable.
- Rang 1 simple et compact ; rang 7 exceptionnel et impressionnant.
- Éviter les éléments flottants sans liaison visuelle et les grandes plaques carrées qui masquent la tourelle.
- Garder la taille dans la boîte technique de placement.

## Catalogue

| Rang | Identifiant et nom | Design visuel | Couleurs | Dégâts | Portée | Cadence | HP | Prix | Chance |
|---:|---|---|---|---:|---:|---:|---:|---:|---:|
| 1 | `SnowboltTurret` — Snowbolt Turret | Petit canon à neige compact, socle circulaire glacé, colonne blanche courbe, tête rapprochée du corps et canon court clairement visible | Blanc, bleu clair, cyan | 50 | 30 | 2.00 | 100 | 200 | 100 % |
| 2 | `IcicleRepeater` — Icicle Repeater | Double lanceur fin tirant des éclats de glace, protections latérales incurvées et petit chargeur cristallin | Bleu glacier, acier froid | 100 | 32.5 | 1.88 | 155 | 430 | 80 % |
| 3 | `FrostbiteCannon` — Frostbite Cannon | Canon lourd unique, bouche large givrée, base renforcée et réservoir de froid intégré | Blanc givré, bleu profond | 175 | 35 | 1.76 | 210 | 924 | 60 % |
| 4 | `HailstormBattery` — Hailstorm Battery | Batterie de quatre tubes courts disposés en éventail, coque fluide et noyau central gelé | Cyan, bleu acier | 250 | 37.5 | 1.64 | 265 | 1 988 | 40 % |
| 5 | `GlacierBallista` — Glacier Ballista | Grande arbalète de siège glacée, deux bras courbes continus et projectile en forme de longue lance cristalline | Bleu glacier, blanc, argent | 400 | 40 | 1.52 | 320 | 4 274 | 30 % |
| 6 | `AuroraPrism` — Aurora Prism | Tourelle énergétique sans canon traditionnel : grand prisme central orientable entouré d'un anneau intégré | Cyan, vert aurore, violet léger | 700 | 42.5 | 1.40 | 375 | 9 188 | 20 % |
| 7 | `AbsoluteZeroSpire` — Absolute Zero Spire | Flèche de glace royale montée sur une base mécanique, cœur d'énergie visible, couronne cristalline et émetteur frontal précis | Blanc pur, cyan intense, bleu nuit | 1 000 | 45 | 1.28 | 430 | 19 754 | 10 % |

## Progression visuelle

- Rangs 1–2 : peu de pièces, pas d'effet permanent important.
- Rangs 3–4 : armure plus épaisse, silhouette plus lourde et faible lumière interne.
- Rang 5 : arme de siège élégante et grande silhouette horizontale.
- Rang 6 : technologie magique d'aurore, prisme lumineux et animation lente.
- Rang 7 : finition maximale, lumière maîtrisée et silhouette prestigieuse sans dépasser la zone technique.

## Validation

- La tête suit encore les ennemis.
- Le projectile part du bon Attachment.
- Aucun script ni objet technique ne manque.
- Le modèle ne dépasse pas anormalement de `PlacementBox`.
- La silhouette reste identifiable vue de loin et sur téléphone.
- La tourelle du rang suivant paraît toujours plus travaillée que la précédente.

