$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://www.gust.org.pl/projects/e-foundry/latin-modern/download/lm2.004otf.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'latin-modern-fonts*'
  checksum      = '5B0236051D3728BE6616F1B274E3B910473875B5A3EF9382F0EF00384DDB161B'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

Install-ChocolateyFont "$toolsDir" -multiple
