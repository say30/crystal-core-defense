# 01 — Frozen Citadel — Tourelles et intégration Roblox

Ce document est la référence technique pour ranger et intégrer les sept tourelles du thème **Frozen Citadel** dans Roblox Studio.

## Emplacement final

Créer ou utiliser le dossier :

```text
ReplicatedStorage
└── Turrets
    ├── SnowboltTurret
    ├── IcicleRepeater
    ├── FrostbiteCannon
    ├── HailstormBattery
    ├── GlacierBallista
    ├── AuroraPrism
    └── AbsoluteZeroSpire
```

Chaque modèle, clé de configuration et référence utilisée par les scripts doit porter **exactement** le même identifiant, majuscules comprises.

## Catalogue complet

| Rang | Identifiant exact du modèle | Nom affiché | Dégâts | Portée | FireRate | HP | Prix | Chance | Stock |
|---:|---|---|---:|---:|---:|---:|---:|---:|---|
| 1 | `SnowboltTurret` | Snowbolt Turret | 50 | 30 | 2.00 | 100 | 200 | 100 % | 1 à 4 |
| 2 | `IcicleRepeater` | Icicle Repeater | 100 | 32.5 | 1.88 | 155 | 430 | 80 % | 1 à 4 |
| 3 | `FrostbiteCannon` | Frostbite Cannon | 175 | 35 | 1.76 | 210 | 924 | 60 % | 1 à 4 |
| 4 | `HailstormBattery` | Hailstorm Battery | 250 | 37.5 | 1.64 | 265 | 1 988 | 40 % | 1 à 4 |
| 5 | `GlacierBallista` | Glacier Ballista | 400 | 40 | 1.52 | 320 | 4 274 | 30 % | 1 à 4 |
| 6 | `AuroraPrism` | Aurora Prism | 700 | 42.5 | 1.40 | 375 | 9 188 | 20 % | 1 à 4 |
| 7 | `AbsoluteZeroSpire` | Absolute Zero Spire | 1 000 | 45 | 1.28 | 430 | 19 754 | 10 % | 1 à 4 |

Ces valeurs doivent correspondre aux entrées de `ReplicatedStorage.Modules.ItemConfigurations`.

## Structure technique obligatoire de chaque tourelle

La structure exacte du gabarit fonctionnel déjà présent dans le jeu reste prioritaire. Chaque nouvelle tourelle doit notamment conserver :

```text
NomExactDeLaTourelle (Model)
├── Head
│   ├── pièces visuelles de la tête
│   ├── Attachment(s) de tir existants
│   └── éléments techniques existants
├── Stand
│   ├── pièces visuelles du socle
│   └── éléments techniques existants
├── FireSound
├── PlacementBox
├── RangePart
└── autres scripts, valeurs, soudures ou contraintes du gabarit
```

Les noms et la position exacte des éléments techniques doivent suivre la tourelle fonctionnelle utilisée comme référence. Ne pas inventer une nouvelle logique de tir.

## Procédure d’intégration

Pour chacune des sept tourelles :

1. Dupliquer une tourelle fonctionnelle existante située dans `ReplicatedStorage.Turrets`.
2. Renommer immédiatement la copie avec l'identifiant exact du tableau.
3. Conserver tous ses scripts, valeurs, sons, pivots, soudures, contraintes, Attachments, `PlacementBox`, `RangePart` et logique de rotation.
4. Retirer uniquement les anciennes pièces visuelles de `Head` et `Stand`.
5. Importer les deux nouvelles parties visuelles produites avec Nilo.
6. Identifier visuellement laquelle est la tête et laquelle est le socle : l'objet importé nommé `Root` n'est pas automatiquement la tête.
7. Ranger le visuel mobile dans `Head` et le visuel fixe dans `Stand`.
8. Aligner la tête sur le pivot de rotation du gabarit.
9. Aligner la bouche du canon sur l'Attachment de projectile existant. Ne pas déplacer cet Attachment sans nécessité.
10. Souder les nouvelles pièces aux mêmes pièces techniques que sur le gabarit.
11. Désactiver les collisions, le contact et les requêtes sur les décorations si le gabarit le fait déjà.
12. Renseigner les statistiques du tableau dans la configuration, sans créer de seconde entrée portant un autre nom.

## Ce qu’il faut conserver et ce qu’il faut remplacer

### À conserver sans modification fonctionnelle

- logique de recherche des ennemis ;
- rotation de `Head` ;
- tir et cadence ;
- projectile et point de départ ;
- scripts et valeurs ;
- sons ;
- Attachments ;
- pivots, Welds et contraintes ;
- `PlacementBox` et `RangePart` ;
- système d'achat, de placement, d'inventaire et de sauvegarde.

### À remplacer

- maillages et textures de l'ancienne tête ;
- maillages et textures de l'ancien socle ;
- icône de boutique lorsque la nouvelle image sera prête.

Les anciennes tourelles peuvent être conservées dans un dossier de références ou de sauvegarde, mais elles ne doivent pas rester dans la collection active de la boutique et ne doivent pas créer de doublons dans l'inventaire.

## Vérifications obligatoires en Play

Aligner les sept tourelles sur une parcelle de test, lancer les vagues pendant au moins 30 secondes, puis vérifier :

- les sept modèles apparaissent sous leur nom exact ;
- le socle reste immobile ;
- la tête tourne vers les ennemis ;
- la tête ne se détache pas visuellement du socle ;
- le projectile sort du canon et non du centre du modèle ;
- les tirs causent les dégâts prévus ;
- la portée et la cadence fonctionnent ;
- aucune décoration ne bloque le joueur ou les monstres ;
- aucun modèle ne dépasse anormalement sa `PlacementBox` ;
- aucune ancienne tourelle n'est ajoutée à l'inventaire actif.

## Règle de progression entre les thèmes

Frozen Citadel est le thème de base, donc son multiplicateur vaut **×1**. Pour les thèmes suivants, les dégâts et les HP des tourelles reprennent les valeurs Frozen Citadel multipliées par le numéro du thème : ×2, ×3, ×4, ×5 et ×6. Les modèles gardent des identifiants propres à leur thème afin d'éviter les collisions techniques.
