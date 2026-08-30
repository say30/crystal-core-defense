# Crystal Core Defense — Règle d’équilibrage linéaire des six thèmes

## Multiplicateurs

| Thème | Multiplicateur |
|---|---:|
| 01 Frozen Citadel | ×1 |
| 02 Pirate Cove | ×2 |
| 03 Candy Kingdom | ×3 |
| 04 Alien World | ×4 |
| 05 Mars Colony | ×5 |
| 06 Crystal Dimension | ×6 |

## Statistiques multipliées

- Dégâts des armes.
- Dégâts et Health des tourelles.
- Health des blocs.
- MaxHealth et Damage des monstres.
- Prix en monnaie du jeu et CashReward, afin que l’économie suive la puissance du thème.

## Statistiques inchangées

- Range et FireRate des tourelles.
- Chances et Weight des caisses.
- StockAmount.
- Debounce et Hitbox des armes.
- Nombre de vagues et organisation des familles.

## Formule

`StatistiqueDuTheme = StatistiqueFrozenCorrespondante × IndexDuTheme`

Exemples :

- Premier monstre : 100 / 200 / 300 / 400 / 500 / 600 HP.
- Arme de base d’une même position : 20 / 40 / 60 / 80 / 100 / 120 dégâts.
- Meilleure arme premium : 350 / 700 / 1 050 / 1 400 / 1 750 / 2 100 dégâts.

Cette règle conserve le même nombre de coups nécessaire contre un monstre de rang équivalent dans chaque thème.

Attention : elle compare les rangs correspondants. Elle ne garantit pas que le premier ennemi d’un nouveau thème soit plus fort que le boss final du thème précédent.

## Confirmation sur toute la table originale des monstres

La multiplication s’applique à chaque monstre de la configuration d’origine : Zombies, Aliens, Troopers remplacés par des créations originales, Prisonniers et leurs boss. Pour un même monstre de référence, MaxHealth, Damage et CashReward sont tous multipliés par l’index du thème.

Exemple avec Guest Prisoner, dont la base est 1 000 000 HP, 200 dégâts et 100 000 de récompense :

| Thème | HP | Dégâts | Récompense |
|---|---:|---:|---:|
| Frozen Citadel ×1 | 1 000 000 | 200 | 100 000 |
| Pirate Cove ×2 | 2 000 000 | 400 | 200 000 |
| Candy Kingdom ×3 | 3 000 000 | 600 | 300 000 |
| Alien World ×4 | 4 000 000 | 800 | 400 000 |
| Mars Colony ×5 | 5 000 000 | 1 000 | 500 000 |
| Crystal Dimension ×6 | 6 000 000 | 1 200 | 600 000 |

La même règle est répétée pour les armes, tourelles, blocs et tous les autres monstres afin que l’équilibrage relatif reste constant dans l’ensemble du jeu.
