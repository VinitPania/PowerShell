# Where-Object is ued to filtering the output it is more versitile .

#Get-ChildItem -Path 'C:\Program Files' -Recurse|Where-Object {$_.Extension -eq ".exe"}
#Get-WmiObject -List|Where-Object {$_.name -like "*network"}
Get-ChildItem -Path "F:\Powershell-scripting" -Recurse|Where-Object { $_.Extension -eq ".ps1" }