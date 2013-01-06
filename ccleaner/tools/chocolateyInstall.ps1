$packageName = 'ccleaner'
$installerType = 'exe'
$url = 'http://fs30.filehippo.com/1293/f19c61d6981e4c3ab4771ec95dd5abd5/ccsetup326.exe'
$url64 = $url
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes