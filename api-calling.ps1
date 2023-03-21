$response =  Invoke-RestMethod -Uri https://64184ff975be53f451dbdfb3.mockapi.io/login/vi/Credentials 
  
$response.username
$response.password


if($response.username -notmatch $NAMEUSR -or $response.password -notmatch $PASWD){
    Write-Host "Username and password not  Authenticated "
    Write-Host "Aborting the pipeline "
    Write-Host "INside if condition"
    $response.username
    $response.password
    #curl.exe {$env:BUILD_URL}stop 
    #curl.exe $env:BUILD_URL//term
    #curl.exe {$env:BUILD_URL}kill


}

