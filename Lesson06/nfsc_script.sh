#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <NFS_SERVER_IP>"
  exit 1
fi

SERVER_IP="$1"

# Установка клиента NFS
apt update
apt install -y nfs-common

# Добавление записи в /etc/fstab
echo "${SERVER_IP}:/srv/share /mnt nfs vers=3,noauto,x-systemd.automount 0 0" >> /etc/fstab

# Применение настроек systemd и монтирование
systemctl daemon-reload
systemctl restart remote-fs.target

# Проверка монтирования
mount | grep mnt
