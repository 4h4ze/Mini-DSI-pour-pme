# tests requis
## 1. Connexion utilisateur AD

```cmd
whoami
whoami /groups
```

## 2. Attribution DHCP

```cmd
ipconfig /all
```

```bash
ip a
```


## 3. Résolution DNS

```cmd
nslookup dc01.entreprise.local
nslookup ubusmbserv.entreprise.local
nslookup entreprise.local
```

## 4. Accès aux partages Samba

```
\\ubusmbserv\Direction
```



## 5. Application des GPO

```
gpupdate /force
gpresult -r
```

## 6. Sauvegarde automatique



## 7. Restauration de données



## 8. Authentiﬁcation SSH par clé
