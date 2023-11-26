# $MsBuild    = "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe"
$SlnFile    = "F:\WEB-APPLICATON\WEBAPPLICATION.sln"
$CsProj     =  "F:\WEB-APPLICATON\WEBAPPLICATION\WEBAPPLICATION.csproj"
$PublishUrl = "E:\PUBLISH-URL"
$NuGet      = "E:\Linux\Azure-Agent\nuget.exe"



# cmd.exe -/c $MsBuild $SlnFile 
# Write-Host "++++++++++++++++++++++++++++++++++++++++Cleanin the package++++++++++++++++++++++++ "
# cmd.exe -/c 
# cmd.exe -/c $MsBuild $CsProj
Write-Host "+++++++++++++++++++++++++++++++++++++restore the package+++++++++++++++++++++++++++++++ "
cmd.exe -/c $NuGet restore  $SlnFile 
Write-Host "++++++++++++++++++++++++++++++++++++++++++++++++Build the package++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++= "
cmd.exe -/c MSBUILD  $SlnFile
