
$ErrorActionPreference = 'Stop';


$packageName= 'virt-viewer'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://virt-manager.org/download/sources/virt-viewer/virt-viewer-x86-6.0.msi'
$url64      = 'https://virt-manager.org/download/sources/virt-viewer/virt-viewer-x64-6.0.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'msi'
  url           = $url
  url64bit      = $url64

  softwareName  = 'VirtViewer*'

  checksum      = 'dfd8b783c4a601f5f612ca9be34c0f29'
  checksumType  = 'md5'
  checksum64    = '67062b8ce7519340eb685aa03464a14b'
  checksumType64= 'md5'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs


















