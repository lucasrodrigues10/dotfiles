
Import-Module Get-ChildItemColor
Set-Alias l Get-ChildItemColor -Option AllScope
Set-Alias ls Get-ChildItemColorFormatWide -Option AllScope
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

$profileScripts = Split-Path $PROFILE + "/profile"
Get-ChildItem ("$profileScripts/*.ps1") | ForEach-Object {
    & (Join-Path $profileScripts $_.Name)
} | Out-Null
