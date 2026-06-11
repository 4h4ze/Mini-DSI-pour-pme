# 1. Infrastructure théorique


Une configuration théorique avec toutes les informations de configurations réseau des différents équipements. 

<img width="888" height="1160" alt="1Infra" src="https://github.com/user-attachments/assets/58366bf7-6648-4f88-8493-3dd20395c4cc" />


<img width="769" height="559" alt="image" src="https://github.com/user-attachments/assets/840d733f-32a1-43f1-b108-2375332a74ec" />





---

# 2. Simulation Cisco Packet tracer


Après une configuration basique des équipements du réseau, on a vérifié un ping entre équipements en filtrant les événements ICMP (ping).

<img width="1881" height="1175" alt="2Cisco (1)" src="https://github.com/user-attachments/assets/44ea6b48-8198-4716-a9d2-0ee6f498213d" />
<img width="861" height="821" alt="2Cisco (2)" src="https://github.com/user-attachments/assets/909859b8-5b61-4a78-8b9e-137ad1672abe" />





---

# 3. Installation des systèmes

## 3.1 Windows Server 2022

| Catégorie | Élément | Nom/Hôte | Valeur |
|------------|----------|-----------|---------|
| Serveur | CPU | dc01 | 2 vCPU |
| Serveur | RAM | dc01 | 4 Go |
| Serveur | Disque | dc01 | 50 Go |

Une installation avec interface graphique de windows Server 2022.

<img width="1920" height="1080" alt="2" src="https://github.com/user-attachments/assets/80609be2-8526-4be1-8417-91794472ddc2" />
<img width="1920" height="1080" alt="1" src="https://github.com/user-attachments/assets/057949a5-b8ec-4ff1-9c72-39247582d32e" />
<img width="1920" height="1080" alt="3" src="https://github.com/user-attachments/assets/8fab6fdd-8fe4-4080-a9e1-2f392f0647cd" />
<img width="1920" height="1080" alt="4" src="https://github.com/user-attachments/assets/2a39fc71-4677-4d3b-9229-f673e42b8fea" />


## 3.2 Windows 10 Pro

| Catégorie | Élément | Nom/Hôte | Valeur |
|------------|----------|-----------|---------|
| Client | CPU | cli01 | 1 vCPU |
| Client | RAM | cli01 | 4 Go |
| Client | Disque | cli01 | 30 Go |

Une installation basique de Windows 10

<img width="1920" height="1080" alt="1" src="https://github.com/user-attachments/assets/bc1613a9-6819-4b71-a3a1-804222e57636" />
<img width="1920" height="1080" alt="2" src="https://github.com/user-attachments/assets/6c4e699c-e880-4fd4-9e0c-b76b744572bf" />




## 3.3 Ubuntu Server 24 (Smb)

| Catégorie | Élément | Nom/Hôte | Valeur |
|------------|----------|-----------|---------|
| Serveur | CPU | fileserv01 | 1 vCPU |
| Serveur | RAM | fileserv01 | 2 Go |
| Serveur | Disque | fileserv01 | 25 Go |

Une installation basique de Ubuntu Server 24

<img width="1920" height="1080" alt="1" src="https://github.com/user-attachments/assets/9fecc66a-1a6c-41d0-bebc-6a3b428e6606" />
<img width="1920" height="1080" alt="2" src="https://github.com/user-attachments/assets/926dc57d-46e9-4d35-8646-47dde87deca2" />
<img width="1920" height="1080" alt="3" src="https://github.com/user-attachments/assets/7a902474-ae02-49ee-a9b6-9963457f692f" />
<img width="1920" height="1080" alt="4" src="https://github.com/user-attachments/assets/1b54d548-4fe1-41fe-8d62-363fb1cc47e4" />







## 3.4 Ubuntu Server 24 (back)

| Catégorie | Élément | Nom/Hôte | Valeur |
|------------|----------|-----------|---------|
| Serveur | CPU | fileserv01 | 1 vCPU |
| Serveur | RAM | fileserv01 | 2 Go |
| Serveur | Disque | fileserv01 | 25 Go |

Une installation basique de Ubuntu Server 24

<img width="1920" height="1080" alt="1" src="https://github.com/user-attachments/assets/9fecc66a-1a6c-41d0-bebc-6a3b428e6606" />
<img width="1920" height="1080" alt="2" src="https://github.com/user-attachments/assets/926dc57d-46e9-4d35-8646-47dde87deca2" />
<img width="1920" height="1080" alt="3" src="https://github.com/user-attachments/assets/7a902474-ae02-49ee-a9b6-9963457f692f" />
<img width="1920" height="1080" alt="4" src="https://github.com/user-attachments/assets/1b54d548-4fe1-41fe-8d62-363fb1cc47e4" />


---
# 4. Configuration des machines Windows

## 4.1 Configuration Windows Server 2022
### 4.1.1 Changer le nom du PC

<img width="1201" height="928" alt="renommer (2)" src="https://github.com/user-attachments/assets/11bef16a-5715-4ec5-b165-a150fab10147" />
<img width="1195" height="473" alt="renommer (1)" src="https://github.com/user-attachments/assets/e48fce28-cd81-4856-98c8-c799534893d5" />


### 4.1.2 Mettre le firewall en Off

<img width="1589" height="947" alt="firewall" src="https://github.com/user-attachments/assets/1d7f214c-cd39-4391-8567-f353989ac7be" />

### 4.1.3 Configurer l'IP Statique

<img width="430" height="525" alt="IP statique AD" src="https://github.com/user-attachments/assets/9d6486c6-43ba-4fd5-8a5a-1046ac88637e" />

### 4.1.4 Installer Active Directory + DNS

<img width="752" height="554" alt="Active Directory" src="https://github.com/user-attachments/assets/d2f6cba1-a555-4632-a8f9-1e1c3e01f770" />

### 4.1.5 Configurer Active Directory

#### 4.1.5.1 Script

#### 4.1.5.2 GPO

<img width="486" height="410" alt="GPO" src="https://github.com/user-attachments/assets/a32e6469-64d8-4f5d-a7f7-c7b26f2fab85" />


##### 4.1.5.2.1 Mot de passe

<img width="1395" height="1045" alt="mot_de_passe (1)" src="https://github.com/user-attachments/assets/ca7cdec1-5163-4a19-b5ed-4a5b48a917ea" />
<img width="1400" height="1043" alt="mot_de_passe (2)" src="https://github.com/user-attachments/assets/57595b3d-de09-4d09-a3e7-de80e1fd6ee4" />

##### 4.1.5.2.2 Fond d'écran

<img width="674" height="631" alt="Fond_écran (1)" src="https://github.com/user-attachments/assets/7c638dc2-4e63-4981-b2af-379c12d4de62" />
<img width="1096" height="566" alt="Fond_écran (2)" src="https://github.com/user-attachments/assets/cb6728ce-59ac-44a4-8fc1-1810043cc51f" />


### 4.1.6 Installer DHCP

| Catégorie | Élément | Nom/Hôte | Valeur |
|------------|----------|-----------|---------|
| DHCP | Pool d'adresses | - | 192.168.10.101 - 192.168.10.120 |
| DHCP | Exclusion | - | 192.168.10.101 |
| DHCP | Exclusion | - | 192.168.10.102 |
| DHCP | Exclusion | - | 192.168.10.103 |
| DHCP | Masque distribué | - | 255.255.255.0 |
| DHCP | Passerelle distribuée | - | 192.168.10.254 |

<img width="512" height="443" alt="DHCP1" src="https://github.com/user-attachments/assets/9d37060d-c2f6-4c34-9510-43fb3ed7240c" />

## 4.2 Configuration de la machine Client

### 4.2.1 Changer le nom du PC

<img width="1201" height="928" alt="renommer (2)" src="https://github.com/user-attachments/assets/11bef16a-5715-4ec5-b165-a150fab10147" />
<img width="1195" height="473" alt="renommer (1)" src="https://github.com/user-attachments/assets/e48fce28-cd81-4856-98c8-c799534893d5" />

### 4.2.2 Ajouter le PC au domaine + verifs ping

<img width="402" height="478" alt="image" src="https://github.com/user-attachments/assets/2798aa00-8137-4f6d-9642-988679477d24" />
<img width="1273" height="672" alt="image" src="https://github.com/user-attachments/assets/95fb122e-3a81-4219-848e-8055f2b60fc1" />


### 4.2.3 Authentification

<img width="1002" height="937" alt="image" src="https://github.com/user-attachments/assets/809ceb6e-a2f0-4aa2-ac24-0f40620a8dbc" />


# 5. Configuration des machines Linux

---

## 1. SMB

### 1. Installer le server SMB
1. installation du paquet "samba" :
```bash
apt-get install -y samba
```
<img width="1920" height="1080" alt="1" src="https://github.com/user-attachments/assets/26c9e07f-a99a-42a4-9b67-15e9090c9162" />

2. Afficher la version actuelle pour vérifier l’installation:
```bash
smbd --version
```

3. Afficher le statut du serveur Samba, et voir s'il est démarré ou arrêté
```bash
systemctl status smbd
```
<img width="1920" height="1080" alt="3" src="https://github.com/user-attachments/assets/dd90fd73-36e4-42cf-99ac-04cca71614e4" />


4. Activer le démarrage automatique de Samba:
```bash
   systemctl enable smbd
```
<img width="1920" height="1080" alt="4" src="https://github.com/user-attachments/assets/5f0f7ca1-765d-4c85-9bf4-3ce17db6ef56" />


### 2. Configurer le server SMB

1. Editer le fichier de configuration
```bash
nano /etc/samba/smb.conf
```

```conf
[global]
   workgroup = ENTREPRISE
   realm = ENTREPRISE.LOCAL
   security = ads

   # Configuration Winbind
   winbind use default domain = yes
   winbind enum users = yes
   winbind enum groups = yes
   winbind refresh tickets = yes

   # Mapping des IDs (Chaque SID Windows devient un UID/GID Linux local)
   idmap config * : backend = tdb
   idmap config * : range = 3000-7999
   idmap config ENTREPRISE : backend = rid
   idmap config ENTREPRISE : range = 10000-999999

   # Configuration des sessions et chemins
   template shell = /bin/bash
   template homedir = /mnt/G/Utilisateurs/%U
   kerberos method = secrets and keytab
   dedicated keytab file = /etc/krb5.keytab

   # Support des permissions de sécurité étendues Windows (ACLs)
   vfs objects = acl_xattr
   map acl inherit = yes
```

---

## 2. DNS

### 1. Installer le DNS

1. Édite ta configuration Netplan :
```bash
sudo nano /etc/netplan/00-installer-config.yaml
```

2. Déclarer le server DHCP et le domaine AD:
```bash
network:
  version: 2
  renderer: networkd
  ethernets:
    ens18:
      addresses:
         - 192.168.10.103/24
      routes:
         - to: default
           via: 192.168.10.102.254
      nameservers:
        addresses: [192.168.10.101]
        search: [entreprise.local]
```

3. Appliquer les modification DNS:
```bash
sudo netplan apply
```

---

## 3. Winbind 

### 1. Joindre Ubuntu au domaine AD

Installer les paquets :
```bash
sudo apt update
sudo apt install winbind libpam-winbind libnss-winbind krb5-user smbclient acl -y
```

Joindre le domaine :
```bash
sudo net ads join -U Administrateur -S 192.168.10.101
```

Redémarre et active les services réseau :
```bash
sudo systemctl restart smbd nmbd winbind && sudo systemctl enable smbd nmbd winbind
```
<img width="1920" height="1080" alt="3-join ad" src="https://github.com/user-attachments/assets/915b96ba-c9ca-423e-a6e9-67748d4e3804" />


Vérifier :
```bash
wbinfo -u      # Pour lister tous tes utilisateurs AD
wbinfo -g      # Pour lister tous tes groupes AD (Direction, Technique, Commercial...)
id [un_utilisateur_de_l_ad]   # Doit retourner un ID
```
<img width="1920" height="1080" alt="4-join ad verif" src="https://github.com/user-attachments/assets/54297bea-fafd-44ea-b191-70bc8c74ddc4" />

---

## 4. SMB Config fichier /home 

Pour forcer Ubuntu à créer automatiquement le dossier /home/ première connexion:
```bash
sudo pam-auth-update
#Utilise les flèches pour descendre sur **"Create home directory on login",
```
<img width="1920" height="1080" alt="5-home directory" src="https://github.com/user-attachments/assets/538a3b2e-e737-4559-b333-712e472a26a4" />

Préparation de la partition G et des Répertoires
```bash
sudo mkdir -p /mnt/G/Direction && sudo mkdir -p /mnt/G/Technique && sudo mkdir -p /mnt/G/Commercial

<img width="1920" height="1080" alt="6-création dir partagé" src="https://github.com/user-attachments/assets/86b0f2e6-231e-4936-9bcc-e857c2c0623d" />


# Attribution des droits locaux maximaux (Samba se chargera du filtrage réseau)
sudo chmod -R 777 /mnt/G/
```

Configuration des Partages Réseau
Ouvre le fichier de configuration Samba et ajoute ces blocs à la toute fin du fichier :
```bash
sudo nano /etc/samba/smb.conf
```
```bash
[Direction]
   comment = Partage Direction
   path = /mnt/G/Direction
   browseable = yes
   read only = no
   valid users = @"gg_direction"
   write list = @"gg_direction"

[Technique]
   comment = Partage Technique
   path = /mnt/G/Technique
   browseable = yes
   read only = no
   valid users = @"gg_technique", @"gg_direction"
   write list = @"gg_technique"
   read list = @"gg_direction"

[Commercial]
   comment = Partage Commercial
   path = /mnt/G/Commercial
   browseable = yes
   read only = no
   valid users = @"gg_commercial"
   write list = @"gg_commercial"
```

Applique les modifications en relançant le serveur SMB
```bash
sudo systemctl restart smbd
```
<img width="1920" height="1080" alt="verif dir win-cli" src="https://github.com/user-attachments/assets/27885436-e9f8-4887-b7ec-78a3431a0944" />

---

## 5. Configuration du server Backup (*rsync / cron*)

### 1. Réseau et Sécurité

#### A. Autorisation `rsync` sans mot de passe (Sur la VM SMB)
Pour que la sauvegarde s'exécute de nuit sans intervention humaine, l'utilisateur `fserv` doit pouvoir exécuter `rsync` avec les privilèges d'administration sans que le système ne réclame de mot de passe.

1. Exécuter la commande suivante sur la **VM SMB** :
```bash
sudo visudo
```
    
2. Ajouter cette ligne tout à la fin du fichier, puis sauvegarder :
```bash
fserv ALL=(ALL) NOPASSWD: /usr/bin/rsync
```    
#### B. Échange de clés SSH (Depuis la VM Backup)
Le script utilise une clé SSH pour s'authentifier de manière sécurisée.

1. Générer la paire de clés sur la **VM Backup** :
```bash
sudo ssh-keygen -t ed25519 -N "" -f /root/.ssh/id_ed25519
```
    
2. Déployer la clé publique sur la **VM SMB** :
```bash
sudo ssh-copy-id -i /root/.ssh/id_ed25519.pub fserv@192.168.10.102
```

### 2. Script Automatique de Sauvegarde
Le script est installé sur la **VM Backup** à l'emplacement
`/usr/local/bin/backup_smb.sh`.
```bash
#!/bin/bash

# --- CONFIGURATION ---
SMB_IP="192.168.10.102"
SSH_USER="root"
TARGET_DIR="/sauvegardes/smb_server"
LOG_FILE="/var/log/backup_samba.log"

# Périmètre exact (Sans dossier fantôme)
SOURCES=(
    "/home"
    "/mnt/G"            # Contient Commercial, Direction, Technique
    "/etc/netplan"
    "/etc/samba"
)

DATE=$(date +%d-%m-%Y)
ERROR_FLAG=0

mkdir -p "$TARGET_DIR/$DATE"

# --- EXÉCUTION ---
for SRC in "${SOURCES[@]}"; do
    # Connexion directe en root sans sudo distant
    rsync -az -e "ssh -o StrictHostKeyChecking=no" $SSH_USER@$SMB_IP:"$SRC" "$TARGET_DIR/$DATE/" 2>/dev/null
    
    if [ $? -ne 0 ]; then
        ERROR_FLAG=1
    fi
done

# --- INTERPRÉTATION & LOGS ---
TAILLE_LISIBLE=$(du -sh "$TARGET_DIR/$DATE" | awk '{print $1}')
HEURE_FIN=$(date +%H:%M:%S)

echo "-------------------------------------------" >> $LOG_FILE
echo "Date : $DATE" >> $LOG_FILE
echo "Heure : $HEURE_FIN" >> $LOG_FILE
if [ $ERROR_FLAG -eq 0 ]; then
    echo "Résultat : SUCCÈS" >> $LOG_FILE
else
    echo "Résultat : ÉCHEC" >> $LOG_FILE
fi
echo "Taille transférée : $TAILLE_LISIBLE" >> $LOG_FILE
echo "-------------------------------------------" >> $LOG_FILE
```

#### Activation du script :
Pour rendre le script opérationnel, les droits d'exécution lui sont attribués :
```bash
sudo chmod +x /usr/local/bin/backup_smb.sh
```

### 3. Planification de la tâche (`cron`)

L'automatisation à **22h00** est gérée par le démon `cron` de la **VM Backup**.
1. Ouvrir le planificateur de tâches en tant qu'administrateur :
```bash
sudo crontab -e
```

2. Insérer la directive horaire suivante :
```bash
0 22 * * * /usr/local/bin/backup_smb.sh > /dev/null 2>&1
```
<img width="1920" height="1080" alt="crontab conf" src="https://github.com/user-attachments/assets/606e7709-34d8-4297-a2eb-1719c0dc64f9" />


### 4. Structure des Logs Générés

Chaque exécution écrit un rapport normé dans `/var/log/backup_samba.log` :
```bash
-------------------------------------------
Date : 10-06-2026
Heure : 22:04:12
Résultat : SUCCÈS
Taille transférée : 14G
-------------------------------------------
```

## 6. PROCÉDURE DE RESTAURATION

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

## 7. PROTOCOLE DE TEST DE RESTAURATION 

### Étape 1 : Sabotage volontaire (Sur la VM SMB)

```bash
sudo rm -rf /mnt/G/Direction
```
_Le partage "Direction" est instantanément indisponible pour les utilisateurs._


### Étape 2 : Restauration et Chronométrage (Depuis la VM Backup)

La commande `time` va calculer la vitesse de reconstruction du partage.

```bash
time rsync -az -e ssh /sauvegardes/smb_server/11-06-2026/G/ root@192.168.10.102:/mnt/G/
```
Suivre scrupuleusement ces 3 étapes devant l'évaluateur pour valider le livrable.

### Étape 3 : Vérification du retour à la normale (Sur la VM SMB)

```bash
ls -l /mnt/G/Direction
```

_Le contenu réapparaît avec les permissions d'origine intactes._



