# PROCÉDURE DE RESTAURATION

Ces commandes de secours s'exécutent depuis la **VM Backup** en tant que `root`.

- **Fichier unique :**
```bash
rsync -az -e ssh /sauvegardes/smb_server/10-06-2026/G/Technique/verif.txt root@192.168.10.102:/mnt/G/Technique/
```
    
- **Dossier / Partage spécifique :**
```bash
rsync -az -e ssh /sauvegardes/smb_server/10-06-2026/G/Commercial root@192.168.10.102:/mnt/G/
```
    
- **Partage complet (`/mnt/G`) :**
```bash
rsync -az --delete -e ssh /sauvegardes/smb_server/10-06-2026/G/ root@192.168.10.102:/mnt/G/
```

---

# PROTOCOLE DE TEST DE RESTAURATION 

## Étape 1 : Sabotage volontaire (Sur la VM SMB)

```bash
sudo rm -rf /mnt/G/Direction
```
_Le partage "Direction" est instantanément indisponible pour les utilisateurs._


## Étape 2 : Restauration et Chronométrage (Depuis la VM Backup)

La commande `time` va calculer la vitesse de reconstruction du partage.

```bash
time rsync -az -e ssh /sauvegardes/smb_server/11-06-2026/G/ root@192.168.10.102:/mnt/G/
```
Suivre scrupuleusement ces 3 étapes devant l'évaluateur pour valider le livrable.

## Étape 3 : Vérification du retour à la normale (Sur la VM SMB)

```bash
ls -l /mnt/G/Direction
```

_Le contenu réapparaît avec les permissions d'origine intactes._


