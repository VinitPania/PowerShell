$response =  Invoke-RestMethod -Uri https://64184ff975be53f451dbdfb3.mockapi.io/login/vi/Credentials 
  
#$response.username
#$response.password


if($response.username -ne $env:username && $response.password -ne $env:password){
    Write-Host "Not Authenticated "
    Write-Host "Aborting the pipeline "
    
}

