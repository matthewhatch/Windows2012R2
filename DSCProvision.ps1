Configuration WebServer{
	
	$Features = @('Web-Server','Web-ASP-NET','Web-ASP-NET45')
	
	Node 'localhost'{
		
		$Features | ForEach {
			WindowsFeature $_{
				Name = $_
				Ensure = 'Present'
			}	
		}
		
		Service 'www'{
			Name = 'w3svc'
			State = 'Running'
		}	
	}
}

WebServer
Start-DscConfiguration -ComputerName 'localhost'  -Path ./WebServer -Wait -Verbose