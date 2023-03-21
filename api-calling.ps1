$response =  Invoke-RestMethod -Uri https://64184ff975be53f451dbdfb3.mockapi.io/login/vi/Credentials 
  

$response.username
$response.password

if($response.username -eq "env:username" && $response.password -eq "env:password"){
    Write-Host "successfully validated "
}

