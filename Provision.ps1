#Write-Host -ForegroundColor Green "Testing"
(new-object Net.WebClient).DownloadString("http://psget.net/GetPsGet.ps1") | iex

$Pester = Get-Module -ListAvailable | where name -eq 'Pester'

if($Pester -eq $null){
	install-module Pester	
}
Import-Module Pester -force

Add-WindowsFeature -Name Web-Server
