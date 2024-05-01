mkdir -p /tmp/htop-rinst && cd /tmp/htop-rinst
wget -O Htop.zip https://github.com/allanxp4/miyoo-htop/releases/download/v0.0.2/Htop.zip
rm -rf /mnt/SDCARD/App/Htop && mkdir -p /mnt/SDCARD/App/Htop
unzip -o Htop.zip -d /mnt/SDCARD/App/Htop
/mnt/SDCARD/App/Htop/create-symlink.sh