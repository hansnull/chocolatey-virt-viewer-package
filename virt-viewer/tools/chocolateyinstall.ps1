
$ErrorActionPreference = 'Stop';


$packageName= 'virt-viewer'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://virt-manager.org/download/sources/virt-viewer/virt-viewer-x86-3.0.msi'
$url64      = 'https://virt-manager.org/download/sources/virt-viewer/virt-viewer-x64-3.0.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'msi'
  url           = $url
  url64bit      = $url64

  softwareName  = 'VirtViewer*'

  checksum      = 'd79e0fb32a5b67acf2c9be113972f853'
  checksumType  = 'md5'
  checksum64    = 'fdad7b1e6c3e6873144b4d975c22e9cc'
  checksumType64= 'md5'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs


















