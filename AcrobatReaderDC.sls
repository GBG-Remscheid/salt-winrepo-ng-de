{% set LOG_PATH = 'C:\\salt\\var\\log\\' %}

AcrobatReaderDC:
  '2023.001.20064':
      full_name: 'Adobe Acrobat Reader DC'
      installer: https://ardownload2.adobe.com/pub/adobe/acrobat/win/AcrobatDC/2300120064/AcroRdrDCx642300120064_de_DE.exe
      install_flags: '/sAll /msi /l "{{ LOG_PATH }}AcroReaderDC_inst.log"'
      uninstaller: 'msiexec.exe'
      uninstall_flags: '/x "C:\\salt\\var\\cache\\salt\\minion\\files\\base\\win\\repo-ng\\AcroReaderDC\\AcroRead.msi" /quiet /log "{{ LOG_PATH }}AcroReaderDC_uninst.log" /norestart'
      locale: de_DE
      msiexec: False
      reboot: False
      cache_dir: True
