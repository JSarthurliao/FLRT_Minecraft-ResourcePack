$defaultpath = $Env:USERPROFILE\AppData\Local\Roaming\.minecraft
$path = 0

function custompath {
    $path = Read-Host "Please enter the path to FLRT-vA1.8.zip"
				}

function path {
    if(Test-Path -Path $defaultpath) {
				$ask = Read-Host "Detected default minecraft folder, do you want to install resource pack into it?(yes/no)
    if ($ask=yes) {
        $path = $defaultpath
        } else {
	          if (Test-Path -Path $path) {
			      "$path existed, moving to update!"
	      } else {
			      "$path does not existed, please retry it agin!"
	          custompath
	      }
}

$SetUp = {
	if (Test-Path -Path $path\temp) {
		&$Update
} else {
		New-Item -Path "$path" -Name "temp" -ItemType "directory"
		&$Update
}

$carlang_zncn = 
$eyemod_zncn = 

$Update = {
	Write-Output "downloading [car]zn_cn.json..."
	Invoke-WebRequest -Uri $carlang_zncn -OutFile "$path\temp\car\lang\zn_cn.json"
 	Write-Output "Done!"
  
 	Write-Output "downloading [eyemod]zn_cn.json..."
	Invoke-WebRequest -Uri $eyemod_zncn -OutFile "$path\temp\eyemod\lang\zn_zn.json"
 	Write-Output "Done!"
 	
}
