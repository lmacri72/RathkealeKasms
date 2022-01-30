#!/bin/bash
ECLIPSE_VER_DATE="2021-12"

mkdir ~/TKPSource
cd ~/TKPSource

# Download adapted TKP
wget -O master.zip https://github.com/rathkealedgt/tkpkasmjava/archive/refs/heads/main.zip
unzip master.zip
rm master.zip

# Set up workspace
mv tkpkasmjava-main TeachingKidsProgramming.Java
cd TeachingKidsProgramming.Java
unzip eclipse_workspace.zip

cp tkp.desktop ~/Desktop
echo Exec=/opt/eclipse/eclipse -data $HOME/TKPSource/TeachingKidsProgramming.Java >>~/Desktop/tkp.desktop
chmod +x ~/Desktop/tkp.desktop

cd /tmp
wget -q -O eclipse.tar.gz "https://mirrors.xmission.com/eclipse/technology/epp/downloads/release/${ECLIPSE_VER_DATE}/R/eclipse-java-${ECLIPSE_VER_DATE}-R-linux-gtk-x86_64.tar.gz"
tar -xzf eclipse.tar.gz -C /opt

ECLIPSE_ICON="/opt/eclipse/plugins/$(ls /opt/eclipse/plugins/ | grep -m 1 org.eclipse.platform_)/eclipse128.png"
sed -i "s#eclipse128.png#${ECLIPSE_ICON}#" $INST_SCRIPTS/eclipse/tkp.desktop

# Set eclipse desktop icon to open TKP
echo Exec=/opt/eclipse/eclipse -data $HOME/TKPSource/TeachingKidsProgramming.Java >>~/Desktop/tkp.desktop
chmod +x ~/Desktop/eclipse.desktop
