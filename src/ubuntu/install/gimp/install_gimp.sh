#!/usr/bin/env bash
set -ex
apt-get update
apt-get install -y gimp maximus
cp /usr/share/applications/gimp.desktop $HOME/Desktop/
chmod +x $HOME/Desktop/gimp.desktop