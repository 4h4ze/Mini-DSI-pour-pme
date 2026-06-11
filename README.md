# 🏢 Mini-DSI pour PME

## 📖 Description

Ce projet consiste à concevoir et déployer une infrastructure informatique complète pour une PME de 30 collaborateurs. L'objectif est de fournir un environnement de travail centralisé, sécurisé, administrable et documenté en s'appuyant sur des technologies Windows et Linux.

L'infrastructure mise en place reproduit les fonctions essentielles d'une Direction des Systèmes d'Information (DSI) à petite échelle : gestion centralisée des utilisateurs, services réseau, partage de fichiers sécurisé, politiques de sécurité, sauvegarde et restauration des données.

---

## 🎯 Objectifs du projet

* Déployer un domaine Active Directory sous Windows Server 2022
* Automatiser la création des utilisateurs via PowerShell
* Fournir les services DHCP et DNS pour le réseau interne
* Intégrer un serveur Linux Samba au domaine Active Directory
* Mettre en place des partages réseau avec des permissions adaptées aux différents services
* Renforcer la sécurité grâce aux GPO
* Assurer la sauvegarde quotidienne des données utilisateurs
* Tester et documenter les procédures de restauration

---

## 🛠 Technologies utilisées

| Technologie            | Rôle                                            |
| ---------------------- | ----------------------------------------------- |
| Windows Server 2022    | Contrôleur de domaine Active Directory          |
| Active Directory       | Gestion centralisée des utilisateurs et groupes |
| PowerShell             | Automatisation de la création des comptes       |
| DHCP                   | Attribution automatique des adresses IP         |
| DNS                    | Résolution de noms interne                      |
| Ubuntu Server          | Serveur de fichiers Samba                       |
| Samba                  | Partage de fichiers intégré à Active Directory  |
| SSH                    | Administration sécurisée du serveur Linux       |
| rsync                  | Sauvegarde des données                          |

---

## 🏗 Architecture

### Machines virtuelles

| VM       | Fonction                         |
| -------- | -------------------------------- |
| DC01     | Contrôleur de domaine, DNS, DHCP |
| FILE01   | Serveur de fichiers Samba        |
| CLIENT01 | Poste utilisateur de test        |
| BACKUP01 | Serveur de sauvegarde            |

---

## 📂 Structure Active Directory

### Unités d'organisation (OU)

```text
Entreprise.local
|
ENTREPRISE
  ├── Direction
  ├── Tech
  └── Commercial
```

### Utilisateurs

* 15 utilisateurs créés automatiquement via PowerShell
* Répartition dans les différentes OU
* Comptes conformes à la politique de sécurité de l'entreprise

---

## 🌐 Services réseau

### DNS

* Zone DNS interne du domaine
* Résolution de noms des serveurs et postes clients

### DHCP

* Attribution dynamique des adresses IP aux postes clients
* Réservation des adresses statiques pour les serveurs

---

## 📁 Serveur de fichiers

Le serveur Ubuntu est intégré au domaine Active Directory via Samba.

### Partages disponibles

| Partage    | Accès                         |
| ---------- | ----------------------------- |
| Direction  | Membres Direction uniquement  |
| Tech       | Membres Tech uniquement       |
| Commercial | Membres Commercial uniquement |

### Sécurité

* Authentification via Active Directory
* Permissions basées sur les groupes de sécurité
* Administration distante par SSH avec authentification par clé

---

## 🔐 Sécurité

### GPO déployées

* Politique de mot de passe complexe
* Verrouillage automatique de session
* Fond d'écran d'entreprise
* Paramètres de sécurité de base Windows

### Mesures complémentaires

* SSH par clé uniquement
* Authentification centralisée
* Suppression des mots de passe par défaut
* Principe du moindre privilège

---

## 💾 Sauvegarde et restauration

### Sauvegarde

* Sauvegarde quotidienne automatisée
* Stockage sur une VM dédiée
* Utilisation de :

  * `rsync` (Linux)

### Restauration

* Procédure documentée
* Tests de restauration réalisés
* Temps de restauration mesuré et enregistré

---

## 📋 Plan d'adressage

| Équipement | Adresse IP |
| ---------- | ---------- |
| DC01       | Statique   |
| FILE01     | Statique   |
| BACKUP01   | Statique   |
| CLIENT01   | DHCP       |

---

## 🚀 Compétences développées

* Administration Windows Server
* Active Directory
* PowerShell
* Gestion DHCP / DNS
* Administration Linux
* Samba et intégration AD
* Sécurisation d'infrastructure
* Sauvegarde et restauration
* Documentation technique

---

## 📄 Auteur

Projet réalisé dans le cadre d'un exercice d'administration systèmes et réseaux visant à reproduire l'infrastructure informatique complète d'une PME.
Fait par :

@Bo-Br : Responsable Windows Server

@4h4ze : Responsable Linux Server
