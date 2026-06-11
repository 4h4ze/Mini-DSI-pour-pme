# 1. Schéma réseau 


# 2. Plan d'adressage 
| VM  | Nom de la VM | Adresse IP   | Masque de sous-réseau | Passerelle (Gateway) | DNS          | VLAN / Réseau | nom d'hote |
| --- | ------------ | ------------ | --------------------- | -------------------- | ------------ | ------------- | ---------- |
| VM1 | Win-Serv     |192.168.10.101|255.255.255.0          |192.168.10.254        |192.168.10.101| net0          | dc01       |
| VM2 | Ubu-Smb-Serv |192.168.10.102|255.255.255.0          |192.168.10.254        |192.168.10.101| net0          | ubusmbserv |
| VM3 | Ubu-Back-Serv|192.168.10.103|255.255.255.0          |192.168.10.254        |192.168.10.101| net0          | ububackserv|
| VM4 | Win-Client   | DHCP         | DHCP                  | DHCP                 | DHCP         | net0          | cli01      |


# 3. Architecture des VMs 
| VM  | Nom            | Système d'exploitation  | Rôle                                     |  Adresse IP  |
| --- | -------------- | ----------------------- | ---------------------------------------- | ------------ |
| VM1 | Win-Serv       | Windows Server2022      | AD/DNS/DHCP                              |192.168.10.101|
| VM2 | Ubu-Smb-Serv   | Linux (UbuntuServer24)  | Serveur de fichiers SAMBA                |192.168.10.102|
| VM3 | Ubu-Back-Serv  | Linux (UbuntuServer 24) | Serveur de sauvegarde                    |192.168.10.103|
| VM4 | Win-Client     | Windows 10 Pro          | Poste client de test                     |DHCP          |


# 4. Conﬁguration des services 

## DHCP

Étendue : 192.168.10.101 - 192.168.10.130

Exclusion : 192.168.10.101 - 192.168.10.103 

    - 192.168.10.101 : AD/DNS/DHCP
    - 192.168.10.102 : File Server
    - 192.168.10.103 : Save Server
    
<img width="725" height="164" alt="image" src="https://github.com/user-attachments/assets/aef00ff8-2141-422e-9a73-db5a80cf5152" />

## DNS

<img width="769" height="126" alt="image" src="https://github.com/user-attachments/assets/fafeed9b-2459-48a8-b3ba-534e5d562e18" />
