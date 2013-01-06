$packageName = 'aimp'
$installerType = 'exe'
$url = 'http://files.programki.net/aimp/aimp_3.20.1165.exe'
$url64 = $url
$validExitCodes = @(0)

$programFiles = "${Env:ProgramFiles}"
$processor = Get-WmiObject Win32_Processor
$procCount=(Get-WmiObject Win32_ComputerSystem).NumberofProcessors
if ($procCount -eq '1') {
	$is64bit = $processor.AddressWidth -eq 64
} else {
	$is64bit = $processor[0].AddressWidth -eq 64
}
if ($is64bit) {
	$programFiles = "${Env:ProgramFiles(x86)}"
}

$silentArgs = "/AUTO='$programFiles\AIMP3\' /SILENT"
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes