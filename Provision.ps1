#Write-Host -ForegroundColor Green "Testing"
(new-object Net.WebClient).DownloadString("http://psget.net/GetPsGet.ps1") | iex

$Pester = Get-Module -ListAvailable | where name -eq 'Pester'

if($Pester -eq $null){
	install-module Pester	
}

Install-Module Posh-Git
Import-Module Pester -force

