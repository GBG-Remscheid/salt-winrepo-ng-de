{% if grains['cpuarch'] == 'AMD64' %}
{% set ARCH = "x64" %}
{% else %}
{% set ARCH = "x86" %}
{% endif %}

{% set LOG_PATH = 'C:\\salt\\var\\log' %}

VeyonStudent:
  '4.7.4.0':
    installer: https://github.com/veyon/veyon/releases/download/v4.7.4/veyon-4.7.4.0-win64-setup.exe
    full_name: 'Veyon - Student'
    uninstaller: "C:\\Program Files\\Veyon\\uninstaller.exe"
    install_flags: '/S /NoMaster'
    uninstall_flags: '/S'
    msiexec: false
    locale: de_DE
    reboot: False
    cache_dir: False
