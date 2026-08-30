# 06 — Crystal Dimension — Armes et caisses

Multiplicateur de combat du thème : **×6** par rapport à Frozen Citadel.

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

## Caisse 1 — Shard Cache

**Style :** Coffre simple de quartz, grandes facettes et verrou prismatique.

**Palette :** cyan, améthyste, saphir, émeraude, rubis et lumière prismatique.

**Prix conseillé :** 3 600 monnaie du jeu. **Stock :** 1 à 5. **Déblocage :** 60 s.

| Position | Identifiant unique | Nom affiché | Dégâts | Weight | Chance réelle | Style de l’arme |
|---:|---|---|---:|---:|---:|---|
| 1 | `Crystal_ShardKnife` | Shard Knife | 120 | 30 | 41,4 % | Forme simple, peu décorée, matériau commun du thème. |
| 2 | `Crystal_QuartzBlade` | Quartz Blade | 180 | 20 | 27,6 % | Forme simple, peu décorée, matériau commun du thème. |
| 3 | `Crystal_PrismEdge` | Prism Edge | 240 | 15 | 20,7 % | Forme simple, peu décorée, matériau commun du thème. |
| 4 | `Crystal_ResonanceSaber` | Resonance Saber | 300 | 7.5 | 10,3 % | Forme simple, peu décorée, matériau commun du thème. |

## Caisse 2 — Prism Vault

**Style :** Caisse cristalline renforcée, reflets spectraux et cadres en cristal sombre.

**Palette :** cyan, améthyste, saphir, émeraude, rubis et lumière prismatique.

**Prix conseillé :** 24 000 monnaie du jeu. **Stock :** 1 à 4. **Déblocage :** 300 s.

| Position | Identifiant unique | Nom affiché | Dégâts | Weight | Chance réelle | Style de l’arme |
|---:|---|---|---:|---:|---:|---|
| 1 | `Crystal_AmethystFang` | Amethyst Fang | 360 | 30 | 41,4 % | Silhouette plus travaillée, renforts et énergie modérée. |
| 2 | `Crystal_SapphireCutter` | Sapphire Cutter | 450 | 20 | 27,6 % | Silhouette plus travaillée, renforts et énergie modérée. |
| 3 | `Crystal_EmeraldEdge` | Emerald Edge | 600 | 15 | 20,7 % | Silhouette plus travaillée, renforts et énergie modérée. |
| 4 | `Crystal_RubySaber` | Ruby Saber | 750 | 7.5 | 10,3 % | Silhouette plus travaillée, renforts et énergie modérée. |

## Caisse 3 — Nexus Arsenal

**Style :** Coffre dimensionnel à noyau central, prismes imbriqués et énergie de résonance.

**Palette :** cyan, améthyste, saphir, émeraude, rubis et lumière prismatique.

**Prix conseillé :** 90 000 monnaie du jeu. **Stock :** 1 à 3. **Déblocage :** 900 s.

| Position | Identifiant unique | Nom affiché | Dégâts | Weight | Chance réelle | Style de l’arme |
|---:|---|---|---:|---:|---:|---|
| 1 | `Crystal_NexusBlade` | Nexus Blade | 900 | 30 | 41,4 % | Arme rare imposante, matériau avancé et effet visuel maîtrisé. |
| 2 | `Crystal_AstralPrismSword` | Astral Prism Sword | 1 050 | 20 | 27,6 % | Arme rare imposante, matériau avancé et effet visuel maîtrisé. |
| 3 | `Crystal_DimensionalFang` | Dimensional Fang | 1 200 | 15 | 20,7 % | Arme rare imposante, matériau avancé et effet visuel maîtrisé. |
| 4 | `Crystal_SpectrumCleaver` | Spectrum Cleaver | 1 500 | 7.5 | 10,3 % | Arme rare imposante, matériau avancé et effet visuel maîtrisé. |

## Caisse 4 — Eternal Core Treasury — PREMIUM

**Style :** Caisse premium ultime, cœur cristallin multicolore, couronne de prismes et aura dimensionnelle.

**Palette :** cyan, améthyste, saphir, émeraude, rubis et lumière prismatique.

**Accès :** achat premium sur l’emplacement flottant situé à côté de la parcelle. Utiliser un ProductID propre à ce thème.

| Position | Identifiant unique | Nom affiché | Dégâts | Weight | Chance réelle | Style de l’arme |
|---:|---|---|---:|---:|---:|---|
| 1 | `Crystal_SovereignShard` | Sovereign Shard | 1 200 | 30 | 41,4 % | Finition premium, silhouette prestigieuse et énergie lumineuse contrôlée. |
| 2 | `Crystal_InfinityPrism` | Infinity Prism | 1 500 | 20 | 27,6 % | Finition premium, silhouette prestigieuse et énergie lumineuse contrôlée. |
| 3 | `Crystal_EternalResonanceBlade` | Eternal Resonance Blade | 1 800 | 15 | 20,7 % | Finition premium, silhouette prestigieuse et énergie lumineuse contrôlée. |
| 4 | `Crystal_CrystalCoreExcalibur` | Crystal Core Excalibur | 2 100 | 7.5 | 10,3 % | Finition premium, silhouette prestigieuse et énergie lumineuse contrôlée. |

## Règles d’intégration

- Dupliquer un Tool d’épée fonctionnel existant puis remplacer uniquement son apparence.
- Conserver scripts, animations, Handle, Weld, Attachments, Trail, sons, Hitbox et Debounce à 0,5 s.
- Affecter la valeur `Damage` indiquée au Tool correspondant.
- Le nom du Tool, la clé de configuration et l’identifiant d’inventaire doivent être strictement identiques.
- Ne jamais ajouter `WoodSword` à une caisse.
- Ne pas créer une deuxième copie d’une arme déjà possédée : convertir le tirage en compensation ou empêcher le doublon selon la logique retenue par le jeu.
- La caisse premium doit changer de modèle, de nom, de contenu et de ProductID selon le thème actif.
