$AskPath = {
	$path = Read-Host "Please enter the path to FLRT-Resource vA1.8.zip:"
		if (Test-Path -Path $path) {
			"$path existed, moving to update!"
	} else {
			"$path does not existed, please retry it agin!"
			&$AskPath
	}
}

