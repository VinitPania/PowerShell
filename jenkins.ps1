

function   jenkins {
    $jenkinsst = Get-Service -name jenkins | Select-Object -expand  Status
    Write-Host "The Jenkins service is  $jenkinsst"
    Write-Host "                            "
    write-Host "Enter the cmd to be executed"
    Write-Host "Start the jenkins service as 1"
    Write-Host "Stop the jenkins service as 2 "
    $stats = Read-Host "Enter the service status to be executed"


    switch ($stats){
        '1'{
            net start jenkins
        }
        '2'{
            net stop jenkins
        }
       
    }
}


function tomcat{
    $Tomcat_bin_path  = "E:\devops\apache-tomcat-8.5.83\bin\"
    
    
    # write-Host "Enter the cmd to be executed"
    # Write-Host "Start the tomcat service as 1"
    # Write-Host "Stop the stop service as 2 "
    # $stats = Read-Host "Enter the service status to be executed"

    Set-Location $Tomcat_bin_path
    Get-ChildItem
    $service = Read-Host "enter the cmd "
    Write-Host " the entered cmd  is $service"
    Invoke-Expression -Command ".\$service"
    Set-Location "F:\powershell-scripting"
}