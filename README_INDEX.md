# Crystal Core Defense — Pack de configuration complet

Ce pack contient **6 thèmes**, **600 vagues explicites**, **144 ennemis originaux**, **42 blocs standards** et **42 tourelles standards**.

## Arborescence

1. `01_Frozen_Citadel` — vagues 1 à 100
2. `02_Pirate_Cove` — vagues 101 à 200
3. `03_Candy_Kingdom` — vagues 201 à 300
4. `04_Alien_World` — vagues 301 à 400
5. `05_Mars_Colony` — vagues 401 à 500
6. `06_Crystal_Dimension` — vagues 501 à 600
Chaque thème contient exactement **7 blocs + 7 tourelles standards**.

## Rôle des fichiers

- `WaveConfigurations.lua` : les 100 vagues du thème, les ennemis, quantités, délais, récompenses, boss et paliers `UnlocksStartingWave`.
- `EnemyConfigurations.lua` : le nom affiché, la famille, les HP, dégâts et récompenses de chaque ennemi.
- `ItemConfigurations.lua` : les 7 blocs et 7 tourelles, avec boutique, stock, chance, HP et statistiques de combat.
## Important avant publication

Remplacer tous les placeholders `REPLACE_..._IMAGE_ID` et `REPLACE_..._PRODUCT_ID` par les identifiants Roblox réels. Ils sont volontairement explicites pour éviter toute confusion avec des IDs valides.

Les ennemis suivent la progression globale des vagues et ne dépendent pas du décor. Le Crystal Core n’est pas redéfini dans ces fichiers et reste donc identique dans tous les thèmes.
