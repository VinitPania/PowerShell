$response =  Invoke-RestMethod -Uri https://64184ff975be53f451dbdfb3.mockapi.io/login/vi/Credentials 
#$response | Import-Csv -LiteralPath F:\powershell-scripting\api.csv
# $response

# $ParameterName
$NAMEUSR = "saitama" 
$PASWD  =  "s@itama" 
$response.username
$response.password
$response.id



Write-Output "Before If condition"
# if($response.username -notmatch $env:NAMEUSR -or  $response.password -notmatch $env:PASWD){
if($response.username -notmatch $NAMEUSR -or $response.password -notmatch $PASWD){


    Write-Host "Username and password not  Authenticated "
    Write-Host "Aborting the pipeline "
    
    $response.username
    $response.password
     curl.exe {$env:BUILD_URL}stop 
    #curl.exe $env:BUILD_URL//term
    # curl.exe {$env:BUILD_URL}kill
    throw 'Error in username or Password'
}

Write-Host "After if condition"