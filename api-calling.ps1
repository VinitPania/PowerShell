$response =  Invoke-RestMethod -Uri https://64184ff975be53f451dbdfb3.mockapi.io/login/vi/Credentials 
  
$response.username
$response.password
Write-Host "from jenkins :$USERNAME"

# if($response.username -ne $env:USERNAME && $response.password -ne $env:PASSWORD){
#     Write-Host "Username and password not  Authenticated "
#     Write-Host "Aborting the pipeline "
#     #curl.exe {$env:BUILD_URL}stop 
#     #curl.exe $env:BUILD_URL//term
#     curl.exe {$env:BUILD_URL}kill
# }

