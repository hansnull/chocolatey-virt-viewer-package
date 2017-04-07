
$ErrorActionPreference = 'Stop';


$packageName= 'virt-viewer'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://virt-manager.org/download/sources/virt-viewer/virt-viewer-x86-5.0.msi'
$url64      = 'https://virt-manager.org/download/sources/virt-viewer/virt-viewer-x64-5.0.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'msi'
  url           = $url
  url64bit      = $url64

  softwareName  = 'VirtViewer*'

  checksum      = '7bbccb04d8f085b459390321988aae1d'
  checksumType  = 'md5'
  checksum64    = 'bfcb8019b96002a499e3ee8c11c1813c'
  checksumType64= 'md5'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs


















