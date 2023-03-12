{% if grains['cpuarch'] == 'AMD64' %}
{% set ARCH = "x64" %}
{% else %}
{% set ARCH = "x86" %}
{% endif %}

{% set LOG_PATH = 'C:\\salt\\var\\log' %}

Audacity:
  '3.2.5':
      full_name: 'Audacity 3.2.5'
      installer: https://github.com/audacity/audacity/releases/download/Audacity-3.2.5/audacity-win-3.2.5-x64.exe
      {% if ARCH == 'x64' %}
      uninstaller: '%PROGRAMFILES(x86)%\Audacity\unins000.exe'
      {% else %}
      uninstaller: '%PROGRAMFILES%\Audacity\unins000.exe'      
      {% endif %}
      install_flags: '/sp- /verysilent /norestart /LOG="{{ LOG_PATH }}_inst.log"'
      uninstall_flags: '/verysilent /SUPPRESSMSGBOXES /NORESTART /LOG="{{ LOG_PATH }}_uninst.log"'
      locale: de_DE
      msiexec: False
      reboot: False
      cache_dir: False