#Invoke-Pester -Script c:\vagrant\Provision.Tests.ps1
Install-Module Pester -force
Install-Module PSReadline -force

Invoke-Pester -Script c:\vagrant\Provision.Tests.ps1