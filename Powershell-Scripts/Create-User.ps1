#not the most secure and efficient way to create a user, but it works for the purpose of this script

$users=@("Manny Smith","Brandy Hernandez") 
$password=ConvertTo-SecureString "Password#123" -AsPlainText -Force

foreach($user in $users) {
    $sam=($user -replace " ",".").toLower()

    $params+@{
        Name=$user
        SamAccountName=$sam
        UserPrincipalName="$sam@company.local"
        Password=$password
        Enabled=$true
        Path="OU=Users,OU=Mandaluyong,DC=company,DC=local"
    }
}

New-ADUser @params