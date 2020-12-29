. .\windows_env\setup\initial_setup.ps1

# #################
# Install tools
# #################
choco feature enable -n=allowGlobalConfirmation

. .\windows_env\choco\win_features.ps1
. .\windows_env\choco\basic.ps1
. .\windows_env\choco\communication.ps1
. .\windows_env\choco\devenv.ps1
. .\windows_env\choco\terminal.ps1
. .\windows_env\choco\personal.ps1

# #################
# Private Data Sources
# #################
. .\windows_env\setup\generate_ssh_key.ps1
. .\windows_env\setup\environment_variables.ps1
. .\windows_env\setup\nuget_sources_config.ps1
. .\windows_env\setup\capslock_to_esc.ps1
. .\windows_env\setup\uninstall_ms_clutter.ps1

