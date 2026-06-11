# tests requis
## 1. Connexion utilisateur AD

```cmd
whoami
whoami /groups
```

<img width="1572" height="618" alt="image" src="https://github.com/user-attachments/assets/1de388a4-369e-4841-98dc-e081ac4b25f1" />

## 2. Attribution DHCP

```cmd
ipconfig /all
```
<img width="841" height="338" alt="image" src="https://github.com/user-attachments/assets/31945371-e32f-4d0c-b102-c1e363b9ab65" />

## 3. Résolution DNS

```cmd
nslookup dc01.entreprise.local
nslookup ubusmbserv.entreprise.local
nslookup entreprise.local
```

<img width="512" height="523" alt="image" src="https://github.com/user-attachments/assets/5b92cb0b-991d-4a00-ab99-1a6af066d277" />

## 4. Accès aux partages Samba

```
\\ubusmbserv\Direction
```

<img width="893" height="265" alt="image" src="https://github.com/user-attachments/assets/f257c364-238d-4c65-97ae-e4efa609c40b" />



## 5. Application des GPO

```
gpupdate /force
gpresult -r
```

<img width="931" height="791" alt="image" src="https://github.com/user-attachments/assets/ac2e0a0a-1847-4f71-a85c-b67290c151c0" />


## 6. Sauvegarde automatique



## 7. Restauration de données



## 8. Authentiﬁcation SSH par clé
