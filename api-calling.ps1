$response =  Invoke-RestMethod -Uri https://64184ff975be53f451dbdfb3.mockapi.io/login/vi/Credentials 
#  $NAMEUSR = "saitama" 
#  $PASWD  =  "s@itama" 
$response.username
$response.password



Write-Output "Before If condition"
if($response.username -notmatch $env:NAMEUSR -or $response.password -notmatch $env:PASWD){
    Write-Host "Username and password not  Authenticated "
    Write-Host "Aborting the pipeline "
    
    $response.username
    $response.password
    #curl.exe {$env:BUILD_URL}stop 
    #curl.exe $env:BUILD_URL//term
    #curl.exe {$env:BUILD_URL}kill
}

Write-Host "After if condition"