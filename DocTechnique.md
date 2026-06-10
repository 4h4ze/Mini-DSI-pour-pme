# 1. Schéma réseau 


# 2. Plan d'adressage 
| VM  | Nom de la VM | Adresse IP   | Masque de sous-réseau | Passerelle (Gateway) | DNS          | VLAN / Réseau | nom d'hote |
| --- | ------------ | ------------ | --------------------- | -------------------- | ------------ | ------------- | ---------- |
| VM1 | Win-Serv     |192.168.10.101|255.255.255.0          |192.168.10.254        |192.168.10.101| net0          | dc01       |
| VM2 | Ubu-Smb-Serv |192.168.10.102|255.255.255.0          |192.168.10.254        |192.168.10.101| net0          | ubusmbserv |
| VM3 | Ubu-Back-Serv|192.168.10.103|255.255.255.0          |192.168.10.254        |192.168.10.101| net0          | ububackserv|
| VM4 | Win-Client   | DHCP         | DHCP                  | DHCP                 | DHCP         | net0          |            |


# 3. Architecture des VMs 
| VM  | Nom            | Système d'exploitation  | Rôle                                     | Adresse IP |
| --- | -------------- | ----------------------- | ---------------------------------------- | ---------- |
| VM1 | Win-Serv       | Windows Server2022      | AD/DNS/DHCP                              |            |
| VM2 | Ubu-Smb-Serv   | Linux (UbuntuServer24)  | Serveur de fichiers SAMBA                |            |
| VM3 | Ubu-Back-Serv  | Linux (UbuntuServer 24) | Serveur de sauvegarde                    |            |
| VM4 | Win-Client     | Windows 10 Pro          | Poste client de test                     |            |


# 4. Conﬁguration des services 

## DHCP
