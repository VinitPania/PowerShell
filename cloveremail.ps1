$From = "vinit.pania@cloveinfotech.com";
$To = "vinit.pania@cloveinfotech.com";
$subject = "This is a test main subject ";
$body = "This is a test body ";
$smptserver = "email.cloverinfotech.com"
$port = "587"
$username = "vinit.pania@cloveinfotech.com";
$password = "Vinit@123" | ConvertTo-SecureString -AsPlainText -Force

$password



#Send-MailMessage -To $To -From $From -Subject $subject  




function  To-SendMail {
    param (
        # Parameter help description
        [Parameter(Mandatory=$true)][String]$To,
        [Parameter(Mandatory=$true)][String]$Subject,
        [Parameter(Mandatory=$true)][String]$Body 
    )
    #getting user name and password 
    $Username = "vinit.pania@cloveinfotech.com";
    $password = "Vinit@123" | ConvertTo-SecureString -AsPlainText -Force

    #Create a hash-table  for  the email

    $email = @{
         
        from = $Username
        to = $To
        subject = $Subject
        smptserver =  "email.cloverinfotech.com"
        body = $Body
        Credentials = New-Object System.Management.Automation.PsCrede -ArgumentList ($Username , $password)
        usessl = $true
        verbose = $true
    }
    $email
}