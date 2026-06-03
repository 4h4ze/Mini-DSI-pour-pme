Import-Module ActiveDirectory

# =========================
# PARAMÈTRES GÉNÉRAUX
# =========================
$Password = ConvertTo-SecureString "MotDePasse123!" -AsPlainText -Force

$BaseDN = "DC=entreprise,DC=local"
$RootOU = "OU=Entreprise,$BaseDN"

# =========================
# CRÉATION DES OU
# =========================
$OUs = @("Direction", "Technique", "Commercial")

# OU racine Entreprise
if (-not (Get-ADOrganizationalUnit -Filter "DistinguishedName -eq '$RootOU'" -ErrorAction SilentlyContinue)) {
    New-ADOrganizationalUnit -Name "Entreprise" -Path $BaseDN -ProtectedFromAccidentalDeletion $false
}

foreach ($ou in $OUs) {
    $path = "OU=$ou,$RootOU"

    if (-not (Get-ADOrganizationalUnit -Filter "DistinguishedName -eq '$path'" -ErrorAction SilentlyContinue)) {
        New-ADOrganizationalUnit -Name $ou -Path $RootOU -ProtectedFromAccidentalDeletion $false
    }
}

# =========================
# CRÉATION DES GROUPES
# =========================
foreach ($g in $OUs) {
    $groupName = "GG_$g"

    if (-not (Get-ADGroup -Filter "Name -eq '$groupName'" -ErrorAction SilentlyContinue)) {
        New-ADGroup `
            -Name $groupName `
            -GroupScope Global `
            -GroupCategory Security `
            -Path $RootOU
    }
}

# =========================
# UTILISATEURS
# =========================
$Utilisateurs = @(
    @{Prenom="Jean"; Nom="Dupont"; Service="Commercial"}
    @{Prenom="Marie"; Nom="Martin"; Service="Commercial"}
    @{Prenom="Paul"; Nom="Durand"; Service="Commercial"}
    @{Prenom="Luc"; Nom="Petit"; Service="Commercial"}
    @{Prenom="Emma"; Nom="Moreau"; Service="Commercial"}

    @{Prenom="Sophie"; Nom="Bernard"; Service="Direction"}
    @{Prenom="Thomas"; Nom="Robert"; Service="Direction"}
    @{Prenom="Julie"; Nom="Richard"; Service="Direction"}
    @{Prenom="Nicolas"; Nom="Simon"; Service="Direction"}
    @{Prenom="Laura"; Nom="Michel"; Service="Direction"}

    @{Prenom="Kevin"; Nom="Garcia"; Service="Technique"}
    @{Prenom="Sarah"; Nom="David"; Service="Technique"}
    @{Prenom="Lucas"; Nom="Roux"; Service="Technique"}
    @{Prenom="Lea"; Nom="Fournier"; Service="Technique"}
    @{Prenom="Hugo"; Nom="Girard"; Service="Technique"}
)

# =========================
# RAPPORT
# =========================
$Report = @()

foreach ($User in $Utilisateurs) {

    $Login = ($User.Prenom.Substring(0,1) + $User.Nom).ToLower()
    $OUPath = "OU=$($User.Service),$RootOU"
    $Group = "GG_$($User.Service)"

    try {
        # Création utilisateur
        New-ADUser `
            -Name "$($User.Prenom) $($User.Nom)" `
            -GivenName $User.Prenom `
            -Surname $User.Nom `
            -SamAccountName $Login `
            -UserPrincipalName "$Login@entreprise.local" `
            -Path $OUPath `
            -AccountPassword $Password `
            -Enabled $true `
            -ChangePasswordAtLogon $true

        # Ajout au groupe
        Add-ADGroupMember -Identity $Group -Members $Login

        # Log OK
        $Report += [PSCustomObject]@{
            Utilisateur = $Login
            Nom         = "$($User.Prenom) $($User.Nom)"
            Service     = $User.Service
            Groupe      = $Group
            Statut      = "Créé"
        }
    }
    catch {
        # Log erreur
        $Report += [PSCustomObject]@{
            Utilisateur = $Login
            Nom         = "$($User.Prenom) $($User.Nom)"
            Service     = $User.Service
            Groupe      = $Group
            Statut      = "Erreur: $($_.Exception.Message)"
        }
    }
}

# =========================
# EXPORT DU RAPPORT
# =========================
$Report | Export-Csv -Path ".\rapport_creation_users.csv" -NoTypeInformation -Encoding UTF8

Write-Host "Script terminé. Rapport généré : rapport_creation_users.csv"
