#$varname = Get-Service -Name Spooler
#Get-Variable

#$PSVersionTable.PSVersion
#$Error$varname = Get-Service -Name Spooler
#Get-Variable

#$PSVersionTable.PSVersion
#$Error#print hellow world 

# $Firstname = $args[0] 
# $Lastname = $args[1] 
#.\hellowworld.ps1 vinit pania -> has this type of input for above code  

param($Firstname  , $Lastname)
#.\hellowworld.ps1 -Firstname Binit -Lastname Baniya -> accept this type of input

Write-Host "Hellow $Firstname $Lastname"
Write-Host "welcome to the ps world $Firstname $Lastname "
Write-Host "You are log in into $env:COMPUTERNAME"
Write-Host "The java files are  $env:JAVA_HOME"


curl.exe $env:BUILD_URL//stop 
#curl.exe $env:BUILD_URL//term

[double]$value = 2
[double]$val = 5
$val+$value 
($value).GetType()

# $varname = Get-Alias|select name 
# $varname

$varname = Get-Service -Name Spooler
#Get-Variable

$PSVersionTable.PSVersion
#$Error