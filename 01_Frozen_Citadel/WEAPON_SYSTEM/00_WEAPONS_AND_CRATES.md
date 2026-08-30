# 01 — Frozen Citadel — Armes et caisses

Multiplicateur de combat du thème : **×1** par rapport à Frozen Citadel.

`WoodSword` reste l’unique arme gratuite donnée aux nouveaux joueurs. Elle ne figure dans aucune caisse. Ses dégâts restent à **10**.

Chaque identifiant ci-dessous est unique afin d’éviter les doublons techniques dans l’inventaire persistant. Les armes achetées restent conservées lors du passage aux thèmes suivants.

## Probabilités communes aux quatre caisses

| Position | Weight | Probabilité réelle |
|---:|---:|---:|
| 1 | 30 | 41,4 % |
| 2 | 20 | 27,6 % |
| 3 | 15 | 20,7 % |
| 4 | 7.5 | 10,3 % |

Les probabilités restent identiques dans tous les thèmes. Elles résultent de la normalisation des poids sur un total de 72,5.

## Caisse 1 — Snowbound Crate

**Style :** Caisse en bois blanc comprimé, cordes gelées, coins bleu glacier et fine neige sur le couvercle.

**Palette :** blanc neige, bleu glacier, cyan lumineux et acier froid.

**Prix conseillé :** 600 monnaie du jeu. **Stock :** 1 à 5. **Déblocage :** 60 s.

| Position | Identifiant unique | Nom affiché | Dégâts | Weight | Chance réelle | Style de l’arme |
|---:|---|---|---:|---:|---:|---|
| 1 | `Frozen_SnowstickSaber` | Snowstick Saber | 20 | 30 | 41,4 % | Forme simple, peu décorée, matériau commun du thème. |
| 2 | `Frozen_RimeFang` | Rime Fang | 30 | 20 | 27,6 % | Forme simple, peu décorée, matériau commun du thème. |
| 3 | `Frozen_FroststeelBlade` | Froststeel Blade | 40 | 15 | 20,7 % | Forme simple, peu décorée, matériau commun du thème. |
| 4 | `Frozen_IcicleEdge` | Icicle Edge | 50 | 7.5 | 10,3 % | Forme simple, peu décorée, matériau commun du thème. |

## Caisse 2 — Rimeforged Crate

**Style :** Coffre d’acier froid aux plaques arrondies, joints givrés et petit verrou cyan.

**Palette :** blanc neige, bleu glacier, cyan lumineux et acier froid.

**Prix conseillé :** 4 000 monnaie du jeu. **Stock :** 1 à 4. **Déblocage :** 300 s.

| Position | Identifiant unique | Nom affiché | Dégâts | Weight | Chance réelle | Style de l’arme |
|---:|---|---|---:|---:|---:|---|
| 1 | `Frozen_GlacierCutter` | Glacier Cutter | 60 | 30 | 41,4 % | Silhouette plus travaillée, renforts et énergie modérée. |
| 2 | `Frozen_WinterguardSword` | Winterguard Sword | 75 | 20 | 27,6 % | Silhouette plus travaillée, renforts et énergie modérée. |
| 3 | `Frozen_BorealSaber` | Boreal Saber | 100 | 15 | 20,7 % | Silhouette plus travaillée, renforts et énergie modérée. |
| 4 | `Frozen_CitadelFrostblade` | Citadel Frostblade | 125 | 7.5 | 10,3 % | Silhouette plus travaillée, renforts et énergie modérée. |

## Caisse 3 — Citadel Arsenal

**Style :** Coffre militaire royal en glace profonde et métal blanc, renforcé par des runes de la citadelle.

**Palette :** blanc neige, bleu glacier, cyan lumineux et acier froid.

**Prix conseillé :** 15 000 monnaie du jeu. **Stock :** 1 à 3. **Déblocage :** 900 s.

| Position | Identifiant unique | Nom affiché | Dégâts | Weight | Chance réelle | Style de l’arme |
|---:|---|---|---:|---:|---:|---|
| 1 | `Frozen_PermafrostCleaver` | Permafrost Cleaver | 150 | 30 | 41,4 % | Arme rare imposante, matériau avancé et effet visuel maîtrisé. |
| 2 | `Frozen_WhiteoutEdge` | Whiteout Edge | 175 | 20 | 27,6 % | Arme rare imposante, matériau avancé et effet visuel maîtrisé. |
| 3 | `Frozen_WardenGreatblade` | Warden Greatblade | 200 | 15 | 20,7 % | Arme rare imposante, matériau avancé et effet visuel maîtrisé. |
| 4 | `Frozen_CrownedIcebrand` | Crowned Icebrand | 250 | 7.5 | 10,3 % | Arme rare imposante, matériau avancé et effet visuel maîtrisé. |

## Caisse 4 — Winter Crown Vault — PREMIUM

**Style :** Caisse premium royale en forme de coffre-couronne, cristal cyan central, glace pure et halo maîtrisé.

**Palette :** blanc neige, bleu glacier, cyan lumineux et acier froid.

**Accès :** achat premium sur l’emplacement flottant situé à côté de la parcelle. Utiliser un ProductID propre à ce thème.

| Position | Identifiant unique | Nom affiché | Dégâts | Weight | Chance réelle | Style de l’arme |
|---:|---|---|---:|---:|---:|---|
| 1 | `Frozen_RoyalRimeblade` | Royal Rimeblade | 200 | 30 | 41,4 % | Finition premium, silhouette prestigieuse et énergie lumineuse contrôlée. |
| 2 | `Frozen_AuroraFang` | Aurora Fang | 250 | 20 | 27,6 % | Finition premium, silhouette prestigieuse et énergie lumineuse contrôlée. |
| 3 | `Frozen_AbsoluteZeroEdge` | Absolute Zero Edge | 300 | 15 | 20,7 % | Finition premium, silhouette prestigieuse et énergie lumineuse contrôlée. |
| 4 | `Frozen_SovereignWinterblade` | Sovereign Winterblade | 350 | 7.5 | 10,3 % | Finition premium, silhouette prestigieuse et énergie lumineuse contrôlée. |

## Règles d’intégration

- Dupliquer un Tool d’épée fonctionnel existant puis remplacer uniquement son apparence.
- Conserver scripts, animations, Handle, Weld, Attachments, Trail, sons, Hitbox et Debounce à 0,5 s.
- Affecter la valeur `Damage` indiquée au Tool correspondant.
- Le nom du Tool, la clé de configuration et l’identifiant d’inventaire doivent être strictement identiques.
- Ne jamais ajouter `WoodSword` à une caisse.
- Ne pas créer une deuxième copie d’une arme déjà possédée : convertir le tirage en compensation ou empêcher le doublon selon la logique retenue par le jeu.
- La caisse premium doit changer de modèle, de nom, de contenu et de ProductID selon le thème actif.
