#!/bin/bash

sudo apt update -y && sudo apt install cifs-utils -y

read -p "Логин:" login

read -p "Пароль: " password

read -p "ФИО: " fullname

read -p "Кабинет: " room

if [ ! -f /root/.smbclient ]; then
    sudo echo "username=$login
password=$password
domain=имя_домена" > /root/.smbclient

    sudo chmod 600 /root/.smbclient
    sudo chown root:root /root/.smbclient

    sudo mkdir /mnt/имя_общей_папки
    sudo mkdir /mnt/имя_общей_папки/имя_папки # для удобства создаётся отдельная папка внутри общей
    sudo echo "# teachers                                                                                 
//адрес_общей_папки /mnt/имя_общей_папки/имя_папки cifs credentials=/root/.smbclient,noperm,_netdev,noauto,x-systemd.automount 0 0" >> /etc/fstab
fi

if ! id "$1" >/dev/null 2>&1; then
    sudo adduser --home /home/$login --shell /bin/bash --ingroup users --gecos "$fullname,$room" $login
fi

if ! id "astra-teacher" >/dev/null 2>&1; then
    sudo adduser --disabled-password --home /home/astra-teacher --shell /bin/bash --ingroup users --gecos "Учитель" astra-teacher
    sudo passwd astra-teacher
fi

echo "DONE"
