#Creating OUs inside an OU in domain    

$locations=@("Mandaluyong","Makati")
$types=@("Servers","Computers","Users")

#foreach location in the locations array, create an OU for each type in the types array

foreach($location in $locations) {
    foreach($type in $types) {
        New-ADOrganizationalUnit `
            -Name $type `
            -Path "OU=$location,DC=company,DC=local" 
    }
}
