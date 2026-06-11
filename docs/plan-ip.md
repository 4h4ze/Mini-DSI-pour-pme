# Plan d'IP
| VM  | Nom de la VM | Adresse IP   | Masque de sous-réseau | Passerelle (Gateway) | DNS          | VLAN / Réseau | nom d'hote |
| --- | ------------ | ------------ | --------------------- | -------------------- | ------------ | ------------- | ---------- |
| VM1 | Win-Serv     |192.168.10.101|255.255.255.0          |192.168.10.254        |192.168.10.101| net0          | dc01       |
| VM2 | Ubu-Smb-Serv |192.168.10.102|255.255.255.0          |192.168.10.254        |192.168.10.101| net0          | ubusmbserv |
| VM3 | Ubu-Back-Serv|192.168.10.103|255.255.255.0          |192.168.10.254        |192.168.10.101| net0          | ububackserv|
| VM4 | Win-Client   | DHCP         | DHCP                  | DHCP                 | DHCP         | net0          | cli01      |
