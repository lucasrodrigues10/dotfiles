
if (Test-Path $PROFILE) { 
    $confirm = Read-Host -Prompt 'There is already a $PROFILE available. Are you sure you want to overwrite it? (y/N)'
    if ($confirm.StartsWith('y') -or  $confirm.StartsWith('Y')) {
        $profileDir = Split-Path $PROFILE
        write-host "cp .\windows_env\profile.ps1 $PROFILE"
        write-host "rm $profileDir\profile"
        write-host "cp .\windows_env\profile $profileDir"
    }
}

& $profile