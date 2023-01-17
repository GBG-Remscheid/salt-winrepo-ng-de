%echo Off

cd "%~dp0"

REG ADD "HKLM\SOFTWARE\CITRIX\PortICA"

Teams_windows_x64.msi /qn /l* "C:\salt\var\log\MicrosoftTeams_inst.log" ALLUSER=1 NODESTKOPSHORTCUT=1
