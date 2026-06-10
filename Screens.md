# 1. Infrastructure théorique


Une configuration théorique avec toutes les informations de configurations réseau des différents équipements. 

<img width="888" height="1160" alt="1Infra" src="https://github.com/user-attachments/assets/58366bf7-6648-4f88-8493-3dd20395c4cc" />


<img width="769" height="559" alt="image" src="https://github.com/user-attachments/assets/840d733f-32a1-43f1-b108-2375332a74ec" />


| Catégorie | Élément | Nom/Hôte | Valeur |
|------------|----------|-----------|---------|
| Domaine | Domaine AD | - | entreprise.local |
| Réseau | Adresse réseau | - | 192.168.10.0/24 |
| Réseau | Masque réseau | - | 255.255.255.0 |
| Réseau | Passerelle par défaut | - | 192.168.10.254 |
| GPO | Stratégie | - | MDP |
| GPO | Stratégie | - | Fond_Ecran |
| Serveur | Contrôleur de domaine | dc01 (Win-Serv) | AD DS, DNS, DHCP |
| Serveur | Adresse IP | dc01 | 192.168.10.101 |
| Serveur | Masque | dc01 | 255.255.255.0 |
| Serveur | Passerelle | dc01 | 192.168.10.254 |
| Serveur | DNS primaire | dc01 | 192.168.10.101 |
| Client | Poste Windows | cli01 (Win-Cli) | Client du domaine |
| Client | Adresse IP | cli01 | DHCP |
| Client | Masque | cli01 | DHCP |
| Client | Passerelle | cli01 | DHCP |
| Client | DNS primaire | cli01 | 192.168.10.101 |
| Serveur | Serveur Samba | fileserv01 (Ubu-Smb-Serv) | Partage de fichiers |
| Serveur | Adresse IP | fileserv01 | 192.168.10.102 |
| Serveur | Masque | fileserv01 | 255.255.255.0 |
| Serveur | Passerelle | fileserv01 | 192.168.10.254 |
| Serveur | DNS primaire | fileserv01 | 192.168.10.101 |
| Serveur | Serveur de sauvegarde | backserv01 (Ubu-Back-Serv) | Sauvegarde |
| Serveur | Adresse IP | backserv01 | 192.168.10.103 |
| Serveur | Masque | backserv01 | 255.255.255.0 |
| Serveur | Passerelle | backserv01 | 192.168.10.254 |
| Serveur | DNS primaire | backserv01 | 192.168.10.101 |
| Serveur | CPU | backserv01 | 1 vCPU |
| Serveur | RAM | backserv01 | 2 Go |
| Serveur | Disque | backserv01 | 25 Go |
| Routeur | Adresse IP | Gateway | 192.168.10.254 |


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







# 6.









# 7.









# 8.








# 9.







# 10.

