
$ErrorActionPreference = 'Stop';


$packageName= 'virt-viewer'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://virt-manager.org/download/sources/virt-viewer/virt-viewer-x86-11.0-1.0.msi'
$url64      = 'https://virt-manager.org/download/sources/virt-viewer/virt-viewer-x64-11.0-1.0.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'msi'
  url           = $url
  url64bit      = $url64

  softwareName  = 'VirtViewer*'

  checksum      = '9c2482858efd52d2d576841d05af1da9'
  checksumType  = 'md5'
  checksum64    = 'd41d616606b3eb28743c1e766cdab61c'
  checksumType64= 'md5'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs


















