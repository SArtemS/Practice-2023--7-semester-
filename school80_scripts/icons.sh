#!/bin/bash

sudo echo "[Desktop Entry]
Name=Электронный журнал
Type=Link
NoDisplay=false
Icon=network
Hidden=false
URL=адрес_электронного_журнала" > /usr/share/applications/flydesktop/journal.desktop

sudo echo "[Desktop Entry]
Name=Общая папка
Type=Link
NoDisplay=false
Icon=folder-remote
Hidden=false
URL=/mnt/путь_к_общей папке" > /usr/share/applications/flydesktop/teachers.desktop

echo "DONE"
