# Plan d'IP
| VM  | Nom de la VM | Adresse IP   | Masque de sous-réseau | Passerelle (Gateway) | DNS          | VLAN / Réseau | nom d'hote |
| --- | ------------ | ------------ | --------------------- | -------------------- | ------------ | ------------- | ---------- |
| VM1 | Win-Serv     |192.168.10.101|255.255.255.0          |192.168.10.254        |192.168.10.101| net0          | dc01       |
| VM2 | Ubu-Smb-Serv |192.168.10.102|255.255.255.0          |192.168.10.254        |192.168.10.101| net0          | ubusmbserv |
| VM3 | Ubu-Back-Serv|192.168.10.103|255.255.255.0          |192.168.10.254        |192.168.10.101| net0          | ububackserv|
| VM4 | Win-Client   | DHCP         | DHCP                  | DHCP                 | DHCP         | net0          | cli01      |


# Infrastructure théorique


Une configuration théorique avec toutes les informations de configurations réseau des différents équipements. 

<img width="888" height="1160" alt="1Infra" src="https://github.com/user-attachments/assets/58366bf7-6648-4f88-8493-3dd20395c4cc" />


<img width="769" height="559" alt="image" src="https://github.com/user-attachments/assets/840d733f-32a1-43f1-b108-2375332a74ec" />





---

# Simulation Cisco Packet tracer


Après une configuration basique des équipements du réseau, on a vérifié un ping entre équipements en filtrant les événements ICMP (ping).

<img width="1881" height="1175" alt="2Cisco (1)" src="https://github.com/user-attachments/assets/44ea6b48-8198-4716-a9d2-0ee6f498213d" />
<img width="861" height="821" alt="2Cisco (2)" src="https://github.com/user-attachments/assets/909859b8-5b61-4a78-8b9e-137ad1672abe" />


