Update-ExecutionPolicy Unrestricted

Write-Host "Unblocking files"
gci -Recurse . | Unblock-File

Set-ExplorerOptions -showHidenFilesFoldersDrives -showProtectedOSFiles -showFileExtensions
