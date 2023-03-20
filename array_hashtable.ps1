
#array 
$myarray = @("boi" , "kratos" , "thor")
$myarray[0]

#hash tabele

$3090ti = @{"Model" = "Nvidia" ; "Length" = "40" ; "Type" = "ti" ; "Name" = "3090" ; "Cuda" = "~15000 approx"}

$3090ti["Model"]
$3090ti["Name"]
$3090ti["Cuda"]

$6900xt = @{Model="AMD" ; Length="38.9" ; Type="xt" ; Name="6900" ; Streamprocessor="~15000 approx"}
$6900xt["Model"]
$6900xt["Name"]
$6900xt["streamprocessor"]

#if-else condition

$val1 = "Vinit2" 

if($val1 -eq "Vinit"){
    Write-Host "you are vinit"

}
else {
    write-Host "you are not vinit"
}

#do - while is use until while condition is true 
#do - until is use till untill condition is false -> rarely used condition
$i = 1 

do {
    Write-Host "output is $i "
    $i++ 
}while ($i -lt  5)

#for loop 

for( $j = 1 ; $j -lt $i ; $j++ ){
    Write-Host "$j"
}

#foreach it will iterate over a collection of items 

foreach ($items in $3090ti){
    Write-Host $items
}

#Switch case 

switch ($val1) {
    'Vinit' {write-host "you are $val1"}
    Default {Write-Host "you are $val1"}
}

