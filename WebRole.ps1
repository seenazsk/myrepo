Configuration DScConfiguration {
		Node $AllNodes.Where{$_.Role -eg "WebServer"}.NodeName
		{
				WindowsFeature IISInstall {
					Ensure = 'Present'
					Name   = 'Web-Server'
		}
}}