# 02 — Pirate Cove — Armes et caisses

Multiplicateur de combat du thème : **×2** par rapport à Frozen Citadel.

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

## Caisse 1 — Driftwood Chest

**Style :** Petit coffre de bois flotté, cordage marin, coquillages et ferrures usées.

**Palette :** bois marin, turquoise, cuivre, rouge corsaire et or maudit.

**Prix conseillé :** 1 200 monnaie du jeu. **Stock :** 1 à 5. **Déblocage :** 60 s.

| Position | Identifiant unique | Nom affiché | Dégâts | Weight | Chance réelle | Style de l’arme |
|---:|---|---|---:|---:|---:|---|
| 1 | `Pirate_DeckhandCutlass` | Deckhand Cutlass | 40 | 30 | 41,4 % | Forme simple, peu décorée, matériau commun du thème. |
| 2 | `Pirate_CoralShiv` | Coral Shiv | 60 | 20 | 27,6 % | Forme simple, peu décorée, matériau commun du thème. |
| 3 | `Pirate_BarnacleBlade` | Barnacle Blade | 80 | 15 | 20,7 % | Forme simple, peu décorée, matériau commun du thème. |
| 4 | `Pirate_TideSaber` | Tide Saber | 100 | 7.5 | 10,3 % | Forme simple, peu décorée, matériau commun du thème. |

## Caisse 2 — Corsair Chest

**Style :** Coffre de corsaire sombre, bandes de cuivre, serrure en ancre et tissu rouge.

**Palette :** bois marin, turquoise, cuivre, rouge corsaire et or maudit.

**Prix conseillé :** 8 000 monnaie du jeu. **Stock :** 1 à 4. **Déblocage :** 300 s.

| Position | Identifiant unique | Nom affiché | Dégâts | Weight | Chance réelle | Style de l’arme |
|---:|---|---|---:|---:|---:|---|
| 1 | `Pirate_CorsairCutlass` | Corsair Cutlass | 120 | 30 | 41,4 % | Silhouette plus travaillée, renforts et énergie modérée. |
| 2 | `Pirate_StormhookBlade` | Stormhook Blade | 150 | 20 | 27,6 % | Silhouette plus travaillée, renforts et énergie modérée. |
| 3 | `Pirate_ReefRipper` | Reef Ripper | 200 | 15 | 20,7 % | Silhouette plus travaillée, renforts et énergie modérée. |
| 4 | `Pirate_BlackwakeSaber` | Blackwake Saber | 250 | 7.5 | 10,3 % | Silhouette plus travaillée, renforts et énergie modérée. |

## Caisse 3 — Captain’s Vault

**Style :** Grand coffre de capitaine renforcé, plaques navales, tentacules sculptés et perle océanique.

**Palette :** bois marin, turquoise, cuivre, rouge corsaire et or maudit.

**Prix conseillé :** 30 000 monnaie du jeu. **Stock :** 1 à 3. **Déblocage :** 900 s.

| Position | Identifiant unique | Nom affiché | Dégâts | Weight | Chance réelle | Style de l’arme |
|---:|---|---|---:|---:|---:|---|
| 1 | `Pirate_CaptainEdge` | Captain Edge | 300 | 30 | 41,4 % | Arme rare imposante, matériau avancé et effet visuel maîtrisé. |
| 2 | `Pirate_KrakenFang` | Kraken Fang | 350 | 20 | 27,6 % | Arme rare imposante, matériau avancé et effet visuel maîtrisé. |
| 3 | `Pirate_MaelstromCleaver` | Maelstrom Cleaver | 400 | 15 | 20,7 % | Arme rare imposante, matériau avancé et effet visuel maîtrisé. |
| 4 | `Pirate_DreadAdmiralBlade` | Dread Admiral Blade | 500 | 7.5 | 10,3 % | Arme rare imposante, matériau avancé et effet visuel maîtrisé. |

## Caisse 4 — Cursed King’s Treasure — PREMIUM

**Style :** Caisse premium en or maudit, bois noir, gemme turquoise et brume spectrale discrète.

**Palette :** bois marin, turquoise, cuivre, rouge corsaire et or maudit.

**Accès :** achat premium sur l’emplacement flottant situé à côté de la parcelle. Utiliser un ProductID propre à ce thème.

| Position | Identifiant unique | Nom affiché | Dégâts | Weight | Chance réelle | Style de l’arme |
|---:|---|---|---:|---:|---:|---|
| 1 | `Pirate_GildedCutlass` | Gilded Cutlass | 400 | 30 | 41,4 % | Finition premium, silhouette prestigieuse et énergie lumineuse contrôlée. |
| 2 | `Pirate_GhostTideSaber` | Ghost Tide Saber | 500 | 20 | 27,6 % | Finition premium, silhouette prestigieuse et énergie lumineuse contrôlée. |
| 3 | `Pirate_LeviathanEdge` | Leviathan Edge | 600 | 15 | 20,7 % | Finition premium, silhouette prestigieuse et énergie lumineuse contrôlée. |
| 4 | `Pirate_CursedKingBlade` | Cursed King Blade | 700 | 7.5 | 10,3 % | Finition premium, silhouette prestigieuse et énergie lumineuse contrôlée. |

## Règles d’intégration

- Dupliquer un Tool d’épée fonctionnel existant puis remplacer uniquement son apparence.
- Conserver scripts, animations, Handle, Weld, Attachments, Trail, sons, Hitbox et Debounce à 0,5 s.
- Affecter la valeur `Damage` indiquée au Tool correspondant.
- Le nom du Tool, la clé de configuration et l’identifiant d’inventaire doivent être strictement identiques.
- Ne jamais ajouter `WoodSword` à une caisse.
- Ne pas créer une deuxième copie d’une arme déjà possédée : convertir le tirage en compensation ou empêcher le doublon selon la logique retenue par le jeu.
- La caisse premium doit changer de modèle, de nom, de contenu et de ProductID selon le thème actif.
