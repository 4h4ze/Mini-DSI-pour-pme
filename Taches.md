# Répartition des tâches du projet « Mini-DSI pour PME »

## Bogdane — Administration Windows Server

### Active Directory

* Installation et configuration de Windows Server 2022
* Promotion du serveur en contrôleur de domaine (DC)
* Création de la forêt et du domaine Active Directory
* Création des 3 OU :

  * Direction
  * Tech
  * Commercial
* Création des groupes de sécurité associés aux services

### Automatisation PowerShell

* Développement du script PowerShell de création des 15 utilisateurs
* Affectation automatique des utilisateurs aux OU et groupes appropriés
* Documentation du script

### Services réseau Windows

* Installation et configuration du serveur DNS
* Création et vérification de la zone DNS interne
* Installation et configuration du serveur DHCP
* Création des étendues DHCP
* Réservation des adresses IP nécessaires

### Sécurité

* Création et application des GPO :

  * Politique de mots de passe
  * Verrouillage automatique de session
  * Fond d'écran d'entreprise
* Vérification de l'application des stratégies sur le poste client

### Sauvegarde Windows

* Mise en place de Windows Server Backup (si retenu)
* Sauvegarde des éléments Active Directory critiques
* Documentation des procédures de sauvegarde et restauration Windows

### Documentation

* Schéma Active Directory
* Documentation DNS/DHCP
* Documentation GPO
* Guide d'administration Windows

---

## Tiago — Administration Linux

### Serveur Ubuntu

* Installation et configuration d'Ubuntu Server
* Configuration réseau statique
* Mise à jour et sécurisation du système

### Sécurisation SSH

* Génération et déploiement des clés SSH
* Désactivation de l'authentification par mot de passe
* Tests d'accès sécurisés

### Intégration Active Directory

* Installation de Samba et des dépendances
* Jonction du serveur Linux au domaine Active Directory
* Vérification de l'authentification des utilisateurs du domaine

### Partages de fichiers

* Création des partages :

  * Direction
  * Tech
  * Commercial
* Configuration des permissions par groupe AD
* Tests d'accès selon les profils utilisateurs

### Sauvegarde Linux

* Installation et configuration du serveur de sauvegarde
* Mise en place des sauvegardes automatisées avec rsync
* Création des scripts de sauvegarde
* Vérification de l'intégrité des sauvegardes

### Restauration

* Création de la procédure de restauration
* Tests complets de récupération des données
* Mesure et documentation du temps de restauration

### Documentation

* Documentation Samba
* Documentation SSH
* Documentation sauvegarde/restauration Linux
* Guide d'exploitation du serveur de fichiers

---

## Tâches communes

### Architecture et conception

* Élaboration du plan d'adressage IP
* Création du schéma réseau global
* Choix des conventions de nommage

### Validation

* Tests fonctionnels complets
* Vérification des permissions utilisateurs
* Validation des sauvegardes et restaurations
* Recette finale du projet

### Rapport final

* Rédaction du README GitHub
* Captures d'écran
* Documentation d'architecture
* Conclusion et retour d'expérience
