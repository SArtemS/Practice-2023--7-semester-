#!/bin/bash

sudo echo "# SCHOOL80-DEFAULTS
text/csv=r7-office-desktopeditors.desktop
image/vnd.djvu=r7-office-desktopeditors.desktop
application/msword=r7-office-desktopeditors.desktop
application/vnd.openxmlformats-officedocument.wordprocessingml.document=r7-office-desktopeditors.desktop
text/docxf=r7-office-desktopeditors.desktop
application/vnd.oasis.opendocument.presentation=libreoffice-impress
application/vnd.oasis.opendocument.spreadsheet=libreoffice-writer
application/vnd.oasis.opendocument.text=libreoffice-calc
text/oform=r7-office-desktopeditors.desktop
application/pdf=org.kde.okular.desktop
application/vnd.ms-powerpoint=r7-office-desktopeditors.desktop
application/vnd.openxmlformats-officedocument.presentationml.slideshow=r7-office-desktopeditors.desktop
application/vnd.ms-powerpoint=r7-office-desktopeditors.desktop
application/vnd.openxmlformats-officedocument.presentationml.presentation=r7-office-desktopeditors.desktop
application/vnd.openxmlformats-officedocument.spreadsheetml.sheet=r7-office-desktopeditors.desktop
application/rtf=r7-office-desktopeditors.desktop
application/vnd.ms-excel=r7-office-desktopeditors.desktop
application/vnd.ms-excel=r7-office-desktopeditors.desktop
application/vnd.ms-xpsdocument=r7-office-desktopeditors.desktop
" >> /usr/share/applications/mimeapps.list

echo "DONE"
