#!/bin/bash
set -e

echo "===== Instalando VNC, noVNC ====="
sudo apt update
sudo apt install -y \
    xfce4 \
    xfce4-goodies \
    tigervnc-standalone-server \
    git \
    python3 \
    python3-pip

echo "===== Instalando websockify ====="
sudo pip3 install websockify

echo "===== Clonando noVNC ====="
mkdir -p ~/noVNC
cd ~
if [ ! -d "noVNC" ]; then
    git clone https://github.com/novnc/noVNC.git
    git clone https://github.com/novnc/websockify.git noVNC/utils/websockify
else
    echo "noVNC já existe, pulando."
fi

echo "===== Criando senha do VNC ====="
mkdir -p ~/.vnc
echo "Digite uma senha para o VNC:"
vncpasswd ~/.vnc/passwd
chmod 600 ~/.vnc/passwd

echo "===== Configurando sessão XFCE ====="
echo "startxfce4" > ~/.vnc/xstartup
chmod +x ~/.vnc/xstartup

echo "===== Instalação concluída ====="
echo "Use './start_vnc.sh' para iniciar VNC + noVNC"
