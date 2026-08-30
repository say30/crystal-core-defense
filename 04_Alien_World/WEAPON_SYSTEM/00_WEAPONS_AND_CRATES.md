# 04 — Alien World — Armes et caisses

Multiplicateur de combat du thème : **×4** par rapport à Frozen Citadel.

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

## Caisse 1 — Bio Pod

**Style :** Capsule organique verte, membrane violette, petites nervures lumineuses et coque vivante.

**Palette :** vert acide, violet, cyan extraterrestre et métal noir.

**Prix conseillé :** 2 400 monnaie du jeu. **Stock :** 1 à 5. **Déblocage :** 60 s.

| Position | Identifiant unique | Nom affiché | Dégâts | Weight | Chance réelle | Style de l’arme |
|---:|---|---|---:|---:|---:|---|
| 1 | `Alien_SporeShiv` | Spore Shiv | 80 | 30 | 41,4 % | Forme simple, peu décorée, matériau commun du thème. |
| 2 | `Alien_ChitinBlade` | Chitin Blade | 120 | 20 | 27,6 % | Forme simple, peu décorée, matériau commun du thème. |
| 3 | `Alien_AcidFang` | Acid Fang | 160 | 15 | 20,7 % | Forme simple, peu décorée, matériau commun du thème. |
| 4 | `Alien_BioEdge` | Bio Edge | 200 | 7.5 | 10,3 % | Forme simple, peu décorée, matériau commun du thème. |

## Caisse 2 — Xenotech Cache

**Style :** Conteneur extraterrestre angulaire, métal sombre et circuits vert acide.

**Palette :** vert acide, violet, cyan extraterrestre et métal noir.

**Prix conseillé :** 16 000 monnaie du jeu. **Stock :** 1 à 4. **Déblocage :** 300 s.

| Position | Identifiant unique | Nom affiché | Dégâts | Weight | Chance réelle | Style de l’arme |
|---:|---|---|---:|---:|---:|---|
| 1 | `Alien_XenoCutter` | Xeno Cutter | 240 | 30 | 41,4 % | Silhouette plus travaillée, renforts et énergie modérée. |
| 2 | `Alien_PlasmaTendril` | Plasma Tendril | 300 | 20 | 27,6 % | Silhouette plus travaillée, renforts et énergie modérée. |
| 3 | `Alien_NebulaClaw` | Nebula Claw | 400 | 15 | 20,7 % | Silhouette plus travaillée, renforts et énergie modérée. |
| 4 | `Alien_SymbioteSaber` | Symbiote Saber | 500 | 7.5 | 10,3 % | Silhouette plus travaillée, renforts et énergie modérée. |

## Caisse 3 — Starborn Arsenal

**Style :** Coffre alien avancé, plaques flottantes intégrées, noyau stellaire et glyphes non textuels.

**Palette :** vert acide, violet, cyan extraterrestre et métal noir.

**Prix conseillé :** 60 000 monnaie du jeu. **Stock :** 1 à 3. **Déblocage :** 900 s.

| Position | Identifiant unique | Nom affiché | Dégâts | Weight | Chance réelle | Style de l’arme |
|---:|---|---|---:|---:|---:|---|
| 1 | `Alien_StarbornBlade` | Starborn Blade | 600 | 30 | 41,4 % | Arme rare imposante, matériau avancé et effet visuel maîtrisé. |
| 2 | `Alien_VoidMandible` | Void Mandible | 700 | 20 | 27,6 % | Arme rare imposante, matériau avancé et effet visuel maîtrisé. |
| 3 | `Alien_QuantumFang` | Quantum Fang | 800 | 15 | 20,7 % | Arme rare imposante, matériau avancé et effet visuel maîtrisé. |
| 4 | `Alien_OvermindEdge` | Overmind Edge | 1 000 | 7.5 | 10,3 % | Arme rare imposante, matériau avancé et effet visuel maîtrisé. |

## Caisse 4 — Overlord Core Vault — PREMIUM

**Style :** Caisse premium biomécanique, œil énergétique central, coque noire et plasma violet.

**Palette :** vert acide, violet, cyan extraterrestre et métal noir.

**Accès :** achat premium sur l’emplacement flottant situé à côté de la parcelle. Utiliser un ProductID propre à ce thème.

| Position | Identifiant unique | Nom affiché | Dégâts | Weight | Chance réelle | Style de l’arme |
|---:|---|---|---:|---:|---:|---|
| 1 | `Alien_RoyalXenoblade` | Royal Xenoblade | 800 | 30 | 41,4 % | Finition premium, silhouette prestigieuse et énergie lumineuse contrôlée. |
| 2 | `Alien_SingularitySaber` | Singularity Saber | 1 000 | 20 | 27,6 % | Finition premium, silhouette prestigieuse et énergie lumineuse contrôlée. |
| 3 | `Alien_AscendantFang` | Ascendant Fang | 1 200 | 15 | 20,7 % | Finition premium, silhouette prestigieuse et énergie lumineuse contrôlée. |
| 4 | `Alien_OverlordCoreblade` | Overlord Coreblade | 1 400 | 7.5 | 10,3 % | Finition premium, silhouette prestigieuse et énergie lumineuse contrôlée. |

## Règles d’intégration

- Dupliquer un Tool d’épée fonctionnel existant puis remplacer uniquement son apparence.
- Conserver scripts, animations, Handle, Weld, Attachments, Trail, sons, Hitbox et Debounce à 0,5 s.
- Affecter la valeur `Damage` indiquée au Tool correspondant.
- Le nom du Tool, la clé de configuration et l’identifiant d’inventaire doivent être strictement identiques.
- Ne jamais ajouter `WoodSword` à une caisse.
- Ne pas créer une deuxième copie d’une arme déjà possédée : convertir le tirage en compensation ou empêcher le doublon selon la logique retenue par le jeu.
- La caisse premium doit changer de modèle, de nom, de contenu et de ProductID selon le thème actif.
