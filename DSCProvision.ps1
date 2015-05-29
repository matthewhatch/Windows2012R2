Configuration WebServer{
	Node 'localhost'{
		
		WindowsFeature WebServer{
			Name = 'Web-Server'
			Ensure = 'Present'
		}
		
		Service 'www'{
			Name = 'w3svc'
			State = 'Running'
		}
		
		
	}
}