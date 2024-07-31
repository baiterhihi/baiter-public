netsh advfirewall set allprofiles state off
powershell -Command "Set-MpPreference -DisableRealtimeMonitoring $true"
powershell -Command "Stop-Service -Name 'WinDefend' -Force"
powershell -Command "Set-Service -Name 'WinDefend' -StartupType Disabled"
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t "REG_DWORD" /d "1" /f