Set-location -path "C:\Users\$env:UserName\3D Objects"
$userName = Get-Content .\email.txt -Raw 
$password = Get-Content .\Pass.txt -Raw 
[SecureString]$securepassword = $password | ConvertTo-SecureString -AsPlainText -Force 
$credential = New-Object System.Management.Automation.PSCredential -ArgumentList $username, $securepassword
Send-MailMessage -SmtpServer smtp.gmail.com -Port 587 -UseSsl -From $username -To $username -Subject 'Test subject' -Body 'Test message' -Attachment .\A.txt -Credential $credential