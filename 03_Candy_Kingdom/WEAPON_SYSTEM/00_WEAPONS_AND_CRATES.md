# 03 — Candy Kingdom — Armes et caisses

Multiplicateur de combat du thème : **×3** par rapport à Frozen Citadel.

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

## Caisse 1 — Sugar Box

**Style :** Boîte de sucre blanc, ruban rose, petits bonbons et coins en biscuit.

**Palette :** rose, cyan, caramel, chocolat, blanc sucre et touches arc-en-ciel.

**Prix conseillé :** 1 800 monnaie du jeu. **Stock :** 1 à 5. **Déblocage :** 60 s.

| Position | Identifiant unique | Nom affiché | Dégâts | Weight | Chance réelle | Style de l’arme |
|---:|---|---|---:|---:|---:|---|
| 1 | `Candy_SugarStick` | Sugar Stick | 60 | 30 | 41,4 % | Forme simple, peu décorée, matériau commun du thème. |
| 2 | `Candy_GumdropBlade` | Gumdrop Blade | 90 | 20 | 27,6 % | Forme simple, peu décorée, matériau commun du thème. |
| 3 | `Candy_CandyCaneSaber` | Candy Cane Saber | 120 | 15 | 20,7 % | Forme simple, peu décorée, matériau commun du thème. |
| 4 | `Candy_FrostingEdge` | Frosting Edge | 150 | 7.5 | 10,3 % | Forme simple, peu décorée, matériau commun du thème. |

## Caisse 2 — Candy Chest

**Style :** Coffre en caramel verni, plaques chocolatées et serrure en sucette.

**Palette :** rose, cyan, caramel, chocolat, blanc sucre et touches arc-en-ciel.

**Prix conseillé :** 12 000 monnaie du jeu. **Stock :** 1 à 4. **Déblocage :** 300 s.

| Position | Identifiant unique | Nom affiché | Dégâts | Weight | Chance réelle | Style de l’arme |
|---:|---|---|---:|---:|---:|---|
| 1 | `Candy_CaramelCutter` | Caramel Cutter | 180 | 30 | 41,4 % | Silhouette plus travaillée, renforts et énergie modérée. |
| 2 | `Candy_LicoriceLashblade` | Licorice Lashblade | 225 | 20 | 27,6 % | Silhouette plus travaillée, renforts et énergie modérée. |
| 3 | `Candy_LollipopSaber` | Lollipop Saber | 300 | 15 | 20,7 % | Silhouette plus travaillée, renforts et énergie modérée. |
| 4 | `Candy_TaffyCleaver` | Taffy Cleaver | 375 | 7.5 | 10,3 % | Silhouette plus travaillée, renforts et énergie modérée. |

## Caisse 3 — Royal Confection Vault

**Style :** Coffre royal en gâteau, glaçage sculpté, gemmes bonbons et couronne de sucre.

**Palette :** rose, cyan, caramel, chocolat, blanc sucre et touches arc-en-ciel.

**Prix conseillé :** 45 000 monnaie du jeu. **Stock :** 1 à 3. **Déblocage :** 900 s.

| Position | Identifiant unique | Nom affiché | Dégâts | Weight | Chance réelle | Style de l’arme |
|---:|---|---|---:|---:|---:|---|
| 1 | `Candy_ChocolateKnightSword` | Chocolate Knight Sword | 450 | 30 | 41,4 % | Arme rare imposante, matériau avancé et effet visuel maîtrisé. |
| 2 | `Candy_MarshmallowCrusher` | Marshmallow Crusher | 525 | 20 | 27,6 % | Arme rare imposante, matériau avancé et effet visuel maîtrisé. |
| 3 | `Candy_SourCrystalEdge` | Sour Crystal Edge | 600 | 15 | 20,7 % | Arme rare imposante, matériau avancé et effet visuel maîtrisé. |
| 4 | `Candy_RoyalCandyBlade` | Royal Candy Blade | 750 | 7.5 | 10,3 % | Arme rare imposante, matériau avancé et effet visuel maîtrisé. |

## Caisse 4 — Sweet Emperor’s Treasury — PREMIUM

**Style :** Caisse premium multicolore, or pâtissier, cristal de sucre central et halo arc-en-ciel discret.

**Palette :** rose, cyan, caramel, chocolat, blanc sucre et touches arc-en-ciel.

**Accès :** achat premium sur l’emplacement flottant situé à côté de la parcelle. Utiliser un ProductID propre à ce thème.

| Position | Identifiant unique | Nom affiché | Dégâts | Weight | Chance réelle | Style de l’arme |
|---:|---|---|---:|---:|---:|---|
| 1 | `Candy_GoldenNougatSaber` | Golden Nougat Saber | 600 | 30 | 41,4 % | Finition premium, silhouette prestigieuse et énergie lumineuse contrôlée. |
| 2 | `Candy_RainbowSugarbrand` | Rainbow Sugarbrand | 750 | 20 | 27,6 % | Finition premium, silhouette prestigieuse et énergie lumineuse contrôlée. |
| 3 | `Candy_EmperorDessertEdge` | Emperor Dessert Edge | 900 | 15 | 20,7 % | Finition premium, silhouette prestigieuse et énergie lumineuse contrôlée. |
| 4 | `Candy_CrownConfectionBlade` | Crown Confection Blade | 1 050 | 7.5 | 10,3 % | Finition premium, silhouette prestigieuse et énergie lumineuse contrôlée. |

## Règles d’intégration

- Dupliquer un Tool d’épée fonctionnel existant puis remplacer uniquement son apparence.
- Conserver scripts, animations, Handle, Weld, Attachments, Trail, sons, Hitbox et Debounce à 0,5 s.
- Affecter la valeur `Damage` indiquée au Tool correspondant.
- Le nom du Tool, la clé de configuration et l’identifiant d’inventaire doivent être strictement identiques.
- Ne jamais ajouter `WoodSword` à une caisse.
- Ne pas créer une deuxième copie d’une arme déjà possédée : convertir le tirage en compensation ou empêcher le doublon selon la logique retenue par le jeu.
- La caisse premium doit changer de modèle, de nom, de contenu et de ProductID selon le thème actif.
