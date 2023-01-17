{% if grains['cpuarch'] == 'AMD64' %}
{% set ARCH = "x64" %}
{% else %}
{% set ARCH = "x86" %}
{% endif %}

{% set LOG_PATH = 'C:\\salt\\var\\log' %}

MicrosoftTeams:
  '1.5.00.36367':
    full_name: 'Teams Machine-Wide Installer'
    installer: salt://win/repo-ng/MicrosoftTeams/install.bat
    install_flags: ''
    uninstaller: salt://win/repo-ng/MicrosoftTeams/Teams_windows_x64.msi
    uninstall_flags: '/qn /l* {{ LOG_PATH }}\\MicrosoftTeams_uninst.log'
    locale: de_DE        
    msiexec: False
    reboot: False
    cache_dir: TRUE
