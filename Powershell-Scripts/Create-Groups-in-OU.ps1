#creating DL groups in OU
#not the most efficient way to do this but it works for now

$locations=@("Mandaluyong")
$groups=@("DL-Accounting","DL-Sales")

foreach($location in $locations) {
    foreach($group in $groups) {
        New-ADGroup `
            -Name $group `
            -GroupScope Global `
            -GroupCategory Distribution `
            -Path "OU=Users,OU=Mandaluyong,DC=company,DC=local"
    }
}
