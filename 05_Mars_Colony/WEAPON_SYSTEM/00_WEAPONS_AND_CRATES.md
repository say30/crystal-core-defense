# 05 — Mars Colony — Armes et caisses

Multiplicateur de combat du thème : **×5** par rapport à Frozen Citadel.

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

## Caisse 1 — Colony Supply Crate

**Style :** Caisse de ravitaillement blanche et rouge, poignées techniques et poussière martienne.

**Palette :** rouge martien, blanc spatial, orange solaire et alliage sombre.

**Prix conseillé :** 3 000 monnaie du jeu. **Stock :** 1 à 5. **Déblocage :** 60 s.

| Position | Identifiant unique | Nom affiché | Dégâts | Weight | Chance réelle | Style de l’arme |
|---:|---|---|---:|---:|---:|---|
| 1 | `Mars_ColonyUtilityBlade` | Colony Utility Blade | 100 | 30 | 41,4 % | Forme simple, peu décorée, matériau commun du thème. |
| 2 | `Mars_DustCutter` | Dust Cutter | 150 | 20 | 27,6 % | Forme simple, peu décorée, matériau commun du thème. |
| 3 | `Mars_RoverSaber` | Rover Saber | 200 | 15 | 20,7 % | Forme simple, peu décorée, matériau commun du thème. |
| 4 | `Mars_RedrockEdge` | Redrock Edge | 250 | 7.5 | 10,3 % | Forme simple, peu décorée, matériau commun du thème. |

## Caisse 2 — Redsteel Cache

**Style :** Conteneur blindé en acier rouge, boulons massifs et indicateur énergétique orange.

**Palette :** rouge martien, blanc spatial, orange solaire et alliage sombre.

**Prix conseillé :** 20 000 monnaie du jeu. **Stock :** 1 à 4. **Déblocage :** 300 s.

| Position | Identifiant unique | Nom affiché | Dégâts | Weight | Chance réelle | Style de l’arme |
|---:|---|---|---:|---:|---:|---|
| 1 | `Mars_RedsteelSword` | Redsteel Sword | 300 | 30 | 41,4 % | Silhouette plus travaillée, renforts et énergie modérée. |
| 2 | `Mars_SolarCutter` | Solar Cutter | 375 | 20 | 27,6 % | Silhouette plus travaillée, renforts et énergie modérée. |
| 3 | `Mars_ReactorBlade` | Reactor Blade | 500 | 15 | 20,7 % | Silhouette plus travaillée, renforts et énergie modérée. |
| 4 | `Mars_CraterFang` | Crater Fang | 625 | 7.5 | 10,3 % | Silhouette plus travaillée, renforts et énergie modérée. |

## Caisse 3 — Olympus Arsenal

**Style :** Coffre militaire spatial avancé, blindage blanc, panneaux solaires et noyau de réacteur.

**Palette :** rouge martien, blanc spatial, orange solaire et alliage sombre.

**Prix conseillé :** 75 000 monnaie du jeu. **Stock :** 1 à 3. **Déblocage :** 900 s.

| Position | Identifiant unique | Nom affiché | Dégâts | Weight | Chance réelle | Style de l’arme |
|---:|---|---|---:|---:|---:|---|
| 1 | `Mars_OlympusSaber` | Olympus Saber | 750 | 30 | 41,4 % | Arme rare imposante, matériau avancé et effet visuel maîtrisé. |
| 2 | `Mars_TerraformerEdge` | Terraformer Edge | 875 | 20 | 27,6 % | Arme rare imposante, matériau avancé et effet visuel maîtrisé. |
| 3 | `Mars_OrbitalCleaver` | Orbital Cleaver | 1 000 | 15 | 20,7 % | Arme rare imposante, matériau avancé et effet visuel maîtrisé. |
| 4 | `Mars_CommanderBlade` | Commander Blade | 1 250 | 7.5 | 10,3 % | Arme rare imposante, matériau avancé et effet visuel maîtrisé. |

## Caisse 4 — Mars Prime Vault — PREMIUM

**Style :** Caisse premium coloniale, alliage noir et or, énergie solaire et emblème abstrait de Mars.

**Palette :** rouge martien, blanc spatial, orange solaire et alliage sombre.

**Accès :** achat premium sur l’emplacement flottant situé à côté de la parcelle. Utiliser un ProductID propre à ce thème.

| Position | Identifiant unique | Nom affiché | Dégâts | Weight | Chance réelle | Style de l’arme |
|---:|---|---|---:|---:|---:|---|
| 1 | `Mars_PrimeAlloySaber` | Prime Alloy Saber | 1 000 | 30 | 41,4 % | Finition premium, silhouette prestigieuse et énergie lumineuse contrôlée. |
| 2 | `Mars_HeliosEdge` | Helios Edge | 1 250 | 20 | 27,6 % | Finition premium, silhouette prestigieuse et énergie lumineuse contrôlée. |
| 3 | `Mars_PhobosFang` | Phobos Fang | 1 500 | 15 | 20,7 % | Finition premium, silhouette prestigieuse et énergie lumineuse contrôlée. |
| 4 | `Mars_MarsPrimeBlade` | Mars Prime Blade | 1 750 | 7.5 | 10,3 % | Finition premium, silhouette prestigieuse et énergie lumineuse contrôlée. |

## Règles d’intégration

- Dupliquer un Tool d’épée fonctionnel existant puis remplacer uniquement son apparence.
- Conserver scripts, animations, Handle, Weld, Attachments, Trail, sons, Hitbox et Debounce à 0,5 s.
- Affecter la valeur `Damage` indiquée au Tool correspondant.
- Le nom du Tool, la clé de configuration et l’identifiant d’inventaire doivent être strictement identiques.
- Ne jamais ajouter `WoodSword` à une caisse.
- Ne pas créer une deuxième copie d’une arme déjà possédée : convertir le tirage en compensation ou empêcher le doublon selon la logique retenue par le jeu.
- La caisse premium doit changer de modèle, de nom, de contenu et de ProductID selon le thème actif.
