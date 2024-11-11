$AskPath = {
	$path = Read-Host "Please enter the path to FLRT-Resource vA1.8.zip:"
		if (Test-Path -Path $path) {
			"$path existed, moving to update!"
			&$Update
	} else {
			"$path does not existed, please retry it agin!"
			&$AskPath
	}
}

$SetUp = {
	if (Test-Path -Path $path\temp) {
		&$Update
} else {
		New-Item -Path "$path" -Name "temp" -ItemType "directory"
		&$Update
}
