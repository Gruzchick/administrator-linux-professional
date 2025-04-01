#!/bin/bash

echo "Установка и настройка NFS-сервера..."

# Установка сервера NFS
apt update
apt install -y nfs-kernel-server

# Создание и настройка экспортируемой директории
mkdir -p /srv/share/upload
chown -R nobody:nogroup /srv/share
chmod 0777 /srv/share/upload

# Настройка экспорта для всех адресов
cat << EOF > /etc/exports
/srv/share *(rw,sync,root_squash)
EOF

# Применение конфигурации
exportfs -r

# Проверка экспорта
echo "Проверка экспортируемой директории:"
exportfs -s
