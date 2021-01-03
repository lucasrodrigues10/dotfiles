# basic
cinst sysinternals
cinst microsoft-windows-terminal
cinst 7zip
cinst git
cinst tortoisesvn
cinst get-childitemcolor
cinst mousewithoutborders
cinst winscp
cinst ditto
cinst everything
cinst pritunl-client
cinst openvpn # TODO: associate with inoa config vpn

if (Test-PendingReboot) { Invoke-Reboot }
