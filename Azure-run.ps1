# Set up variables for your Azure DevOps organization, project, and pipeline
$orgName = "vinitpania28"
$projectName = "WEB-APPLICATION"
$pipelineName = "WEB-APPLICATION-Azure Functions for Powershell-CI"

# Set up the path to your Excel file and the worksheet containing the PAT
$excelFilePath = "F:\tokens\tokens.xlsx"
$worksheetName = "Sheet2"

# Get the encrypted PAT from the Excel file
$FetchPat = (Import-Excel -Path $excelFilePath -WorksheetName $worksheetName -HeaderName "PAT").PAT
Write-Host $FetchPat[1]
$pat = $FetchPat[1]

# Set up the API endpoint URL for your pipeline
$apiUrl = "https://dev.azure.com/$orgName/$projectName/$pipelineName"

# Set up the headers for the API call
$headers = @{
    Authorization = "Basic $(ConvertTo-SecureString -AsPlainText -Force -String "user:$pat")"
    'Content-Type' = 'application/json'
}

# Set up the request body for the API call
$body = @"
{
    "resources": {
        "repositories": {
            "WEB-APPLICATION": {
                "refName": "refs/heads/main"
            }
        }
    }
  
}
"@

# Send the API request to trigger the pipeline
Invoke-RestMethod -Uri $apiUrl -Headers $headers -Method POST -Body $body
