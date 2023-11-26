Import-Module -Name 'IISAdministration'


 
Remove-Item "E:\devops\virtualdir\AZURE DEPLOY\WEBSITE\*.zip"
Write-host "Deleted the privious files"
xcopy.exe   "E:\Linux\Azure-Agent\_work\4\a" "E:\devops\virtualdir\AZURE DEPLOY\WEBSITE" /v /s /e /y
xcopy.exe   "E:\devops\virtualdir\AZURE DEPLOY\WEBSITE" "E:\devops\virtualdir\BACKUP_zip"


# New-IISSite -Name 'MyWebsite' -PhysicalPath 'E:\$' -BindingInformation "*:8088:"