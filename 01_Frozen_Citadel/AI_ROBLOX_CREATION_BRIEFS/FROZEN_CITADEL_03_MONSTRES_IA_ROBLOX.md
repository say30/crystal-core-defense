# Frozen Citadel — Création des 24 monstres avec l'IA Roblox

## Mission

Créer vingt-quatre apparences de monstres Frozen Citadel pour les vagues 1 à 100. Ils sont répartis en quatre familles de six créatures, avec un boss à la fin de chaque famille.

## Règle technique obligatoire

Chaque nouveau monstre doit être construit à partir d'une **copie complète d'un monstre fonctionnel existant**.

1. Dupliquer le modèle R6 fonctionnel avec son `Humanoid`, `HumanoidRootPart`, `Head`, `Torso`, `Left Arm`, `Right Arm`, `Left Leg` et `Right Leg`.
2. Renommer la copie avec l'identifiant exact indiqué dans le tableau.
3. Conserver sans modification `Humanoid`, `HumanoidRootPart`, `Motor6D`, pivots, Attachments, scripts d'IA, `Animate`, animations, sons, configurations, BillboardGui et logique d'attaque.
4. Ne pas remplacer le rig par un modèle statique.
5. Modifier uniquement l'apparence : couleurs corporelles, vêtements, accessoires, armures et MeshParts décoratifs soudés aux membres du rig.
6. Les pièces visuelles ajoutées doivent avoir `CanCollide = false`, `Massless = true` et être soudées au bon membre.
7. Les accessoires ne doivent pas bloquer la marche, cacher la barre de vie ou déplacer le `HumanoidRootPart`.
8. Tester la marche, l'animation, l'orientation, l'attaque, les dégâts et la mort après chaque création.

Les monstres déjà présents servent uniquement de gabarits techniques et de références. Leur apparence ne doit pas être reprise dans la nouvelle collection active.

## Direction artistique commune

- Style Roblox R6 stylisé, propre, expressif et lisible sur téléphone.
- Famille 1 : créatures sauvages de neige et de glace.
- Famille 2 : armée et gardes de la citadelle.
- Famille 3 : magie de l'aurore et cristaux lumineux.
- Famille 4 : glace abyssale, formes inquiétantes et couleurs sombres.
- La taille et les détails augmentent progressivement dans chaque famille.
- Le sixième monstre de chaque famille est un boss clairement identifiable.
- Utiliser de grands détails ; éviter le bruit visuel et les accessoires minuscules.
- Limiter les lumières et les particules pour les performances mobiles.

## Famille 1 — Frostbound, vagues 1 à 25

| Rang | Identifiant et nom | Apparence à créer | HP | Dégâts | Récompense |
|---:|---|---|---:|---:|---:|
| 1 | `Frostbound_SnowdriftScout` — Snowdrift Scout | Petit éclaireur emmitouflé, capuche blanche, lunettes bleues, givre léger sur les bras | 100 | 10 | 1 |
| 2 | `Frostbound_RimeWalker` — Rime Walker | Marcheur gelé mince, peau bleu pâle, plaques de givre sur les épaules et le dos | 172 | 15 | 2 |
| 3 | `Frostbound_IcicleBrute` — Icicle Brute | Brute large avec avant-bras glacés, épaules en pointes et mâchoire massive | 296 | 20 | 3 |
| 4 | `Frostbound_GlacierStalker` — Glacier Stalker | Chasseur agile bleu sombre, masque de glace, griffes longues et silhouette penchée | 509 | 25 | 6 |
| 5 | `Frostbound_WhiteoutColossus` — Whiteout Colossus | Colosse blanc très large, armure de neige compacte et gros cristaux dorsaux | 875 | 30 | 10 |
| 6 | `Frostbound_AncientFrostWarden` — Ancient Frost Warden — BOSS | Gardien antique imposant, casque cornu glacé, armure runique et grand cœur cyan dans le torse | 10 000 | 50 | 1 000 |

## Famille 2 — Citadel, vagues 26 à 50

| Rang | Identifiant et nom | Apparence à créer | HP | Dégâts | Récompense |
|---:|---|---|---:|---:|---:|
| 7 | `Citadel_FrozenSquire` — Frozen Squire | Jeune soldat, casque ouvert, petite épaulière et tabard bleu glacier | 1 505 | 35 | 17 |
| 8 | `Citadel_RampartRaider` — Rampart Raider | Pillard des remparts, casque asymétrique, manteau givré et protections de bras | 2 589 | 40 | 29 |
| 9 | `Citadel_IceboundKnight` — Icebound Knight | Chevalier complet aux plaques lisses, visière cyan et épaulettes de glace | 4 453 | 45 | 49 |
| 10 | `Citadel_FrostBanneret` — Frost Banneret | Officier royal, casque à crête, bannière dorsale courte et armure blanche raffinée | 7 660 | 50 | 85 |
| 11 | `Citadel_SiegeBehemoth` — Siege Behemoth | Géant de siège lourd, blindage épais, épaules massives et blocs de glace renforcés | 13 175 | 55 | 146 |
| 12 | `Citadel_CrownedGlacialRegent` — Crowned Glacial Regent — BOSS | Roi glacial monumental, couronne cristalline, cape bleue, armure royale et sceptre visuel | 72 000 | 100 | 6 000 |

## Famille 3 — Aurora, vagues 51 à 75

| Rang | Identifiant et nom | Apparence à créer | HP | Dégâts | Récompense |
|---:|---|---|---:|---:|---:|
| 13 | `Aurora_AuroraWisp` — Aurora Wisp | Petit esprit humanoïde léger, corps cyan translucide et deux rubans d'aurore soudés au dos | 22 661 | 60 | 252 |
| 14 | `Aurora_PrismProwler` — Prism Prowler | Prédateur cristallin violet et cyan, masque prismatique et griffes facettées | 38 977 | 65 | 433 |
| 15 | `Aurora_BorealShaman` — Boreal Shaman | Chaman nordique, capuche, bois courts, talismans cristallins et bâton visuel soudé à la main | 67 041 | 70 | 745 |
| 16 | `Aurora_NorthernSentinel` — Northern Sentinel | Sentinelle élégante, armure blanche symétrique et prisme lumineux central | 115 311 | 75 | 1 281 |
| 17 | `Aurora_AuroraTitan` — Aurora Titan | Titan massif cyan et vert, grandes épaules lisses et plusieurs cristaux d'aurore intégrés | 198 334 | 80 | 2 204 |
| 18 | `Aurora_HeartoftheLongNight` — Heart of the Long Night — BOSS | Entité royale violet nuit, cœur d'aurore visible, grande couronne flottante soudée au rig et cape cosmique | 518 400 | 150 | 43 200 |

## Famille 4 — Abyssal Ice, vagues 76 à 100

| Rang | Identifiant et nom | Apparence à créer | HP | Dégâts | Récompense |
|---:|---|---|---:|---:|---:|
| 19 | `AbyssalIce_CrevasseCrawler` — Crevasse Crawler | Créature voûtée noire et bleue, bras allongés, dos fissuré et yeux cyan | 341 135 | 85 | 3 790 |
| 20 | `AbyssalIce_BlackIceHunter` — Black Ice Hunter | Chasseur sombre mince, armure de glace noire, masque pointu et lames d'avant-bras | 586 753 | 90 | 6 519 |
| 21 | `AbyssalIce_PermafrostHorror` — Permafrost Horror | Horreur épaisse, torse fissuré, membres irréguliers et pointes de permafrost | 1 009 215 | 95 | 11 214 |
| 22 | `AbyssalIce_AbyssalYeti` — Abyssal Yeti | Yéti géant bleu nuit, fourrure stylisée en grandes mèches et griffes de glace noire | 1 735 849 | 100 | 19 287 |
| 23 | `AbyssalIce_EternalIcebreaker` — Eternal Icebreaker | Guerrier destructeur très lourd, tête blindée, poings massifs et noyau rouge froid fissuré | 2 985 661 | 105 | 33 174 |
| 24 | `AbyssalIce_SovereignofWinter` — Sovereign of Winter — BOSS | Souverain final gigantesque, armure noire royale, couronne de glace, cœur cyan et cape déchirée | 3 732 480 | 200 | 311 040 |

## Progression visuelle obligatoire

- Dans chaque famille, les rangs 1 et 2 sont simples et rapides à lire.
- Les rangs 3 et 4 gagnent une silhouette plus spécialisée.
- Le rang 5 est un monstre élite très imposant.
- Le rang 6 est un boss avec une couronne, un noyau ou une silhouette unique.
- Les quatre familles doivent être différenciables uniquement par leurs couleurs et leur langage de formes.
- Les monstres ne doivent jamais ressembler aux cristaux protégés ni aux tourelles.

## Validation

- Le monstre marche sur le chemin sans glisser ni se désassembler.
- Toutes les animations R6 fonctionnent.
- Le monstre regarde et attaque dans la bonne direction.
- Les dégâts, la barre de vie et la mort fonctionnent.
- Aucun accessoire n'a de collision active.
- Le nom du modèle correspond exactement à la clé de `EnemyConfigurations`.
- Les boss sont plus beaux et plus imposants, mais restent compatibles avec le chemin et la caméra.

