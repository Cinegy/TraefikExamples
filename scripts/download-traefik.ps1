#define Traefik version
$traefikVersion = "2.2.1"

#download tested Traefik version for Windows from github and unzip
$client = New-Object System.Net.WebClient
$traefikZipName = "traefik-$traefikVersion.zip"

Write-Output "Downloading Traefik v$TraefikVersion - please be patient, it can take a few moments..."
$client.DownloadFile("https://github.com/containous/traefik/releases/download/v$traefikVersion/traefik_v$($traefikVersion)_windows_amd64.zip", ".\$traefikZipName")

Expand-Archive -Path $traefikZipName -DestinationPath ./ -Force

Remove-Item $traefikZipName