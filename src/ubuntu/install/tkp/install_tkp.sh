#!/bin/bash
mkdir ~/TKPSource
cd ~/TKPSource

wget -O master.zip https://github.com/rathkealedgt/tkpkasmjava/archive/refs/heads/main.zip
unzip master.zip
rm master.zip

mv tkpkasmjava-main tkp-kasm-java
cd tkp-kasm-java

unzip eclipse_workspace.zip