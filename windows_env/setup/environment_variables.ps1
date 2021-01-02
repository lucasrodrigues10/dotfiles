$defaultEnvUrl = "https://gist.githubusercontent.com/lucasrodrigues10/7d41587f9824ed1b64f3be6e44dd9341/raw/6f85f1ac55317605708d5805cfdd33f3c9aeabb1/.raw"

$envUrl = Read-Host -Prompt "Please enter the .env file URL (using default if none)"
if (-not $envUrl) {
  $envUrl = $defaultEnvUrl
}

curl $envUrl -Headers @{"Cache-Control" = "no-cache"} -OutFile ~/.env

get-content ~/.env | ForEach-Object {
  if (-not $_ ) { return }

  $split = $_.Split('=', 2)
  $envVarKey = $split[0]
  $envVarValue = $split[1]

  if ((-not $envVarKey) -or (-not $envVarValue)) { return }

  [System.Environment]::SetEnvironmentVariable($envVarKey, $envVarValue, [System.EnvironmentVariableTarget]::Machine)
}
