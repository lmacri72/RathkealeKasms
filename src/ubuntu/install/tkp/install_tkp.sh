#!/bin/bash
mkdir ~/TKPSource
cd ~/TKPSource

# Download adapted TKP
wget -O master.zip https://github.com/rathkealedgt/tkpkasmjava/archive/refs/heads/main.zip
unzip master.zip
rm master.zip

# Set up workspace
mv tkpkasmjava-main tkp-kasm-java
cd tkp-kasm-java
unzip eclipse_workspace.zip

# Set eclipse desktop icon to open TKP
echo Exec=/opt/eclipse/eclipse -data $HOME/TKPSource/tkp-kasm-java >>~/Desktop/eclipse.desktop
chmod +x ~/Desktop/eclipse.desktop
