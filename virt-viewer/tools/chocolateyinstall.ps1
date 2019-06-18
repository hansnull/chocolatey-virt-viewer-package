
$ErrorActionPreference = 'Stop';


$packageName= 'virt-viewer'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://virt-manager.org/download/sources/virt-viewer/virt-viewer-x86-8.0.msi'
$url64      = 'https://virt-manager.org/download/sources/virt-viewer/virt-viewer-x64-8.0.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'msi'
  url           = $url
  url64bit      = $url64

  softwareName  = 'VirtViewer*'

  checksum      = '93bbe9092b3a785ad7a766743b50abf2'
  checksumType  = 'md5'
  checksum64    = 'd49aa432ac4bd6362fe8c0f15a24016b'
  checksumType64= 'md5'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs


















