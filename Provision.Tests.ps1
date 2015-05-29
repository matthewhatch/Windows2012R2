Describe 'System State' {
	It 'Should have some stuff installed' {
		(Get-Service -Name 'w3svc').State | Should Be 'Running'
	}
}