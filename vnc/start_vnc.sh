#!/bin/bash

export DISPLAY=:1
export NO_VNC_HOME="$HOME/noVNC"

echo "===== PARANDO PROCESSOS ANTIGOS ====="
sudo pkill -f x11vnc
sudo pkill -f websockify

echo "===== INICIANDO x11vnc ====="
x11vnc -display :1 -rfbport 5900 -forever -noxdamage &

sleep 2

echo "===== INICIANDO noVNC ====="

if [ ! -f "$NO_VNC_HOME/utils/novnc_proxy" ]; then
    echo "ERRO: noVNC não encontrado em $NO_VNC_HOME"
    echo "Execute o instalação:"
    echo "git clone https://github.com/novnc/noVNC.git ~/noVNC"
    exit 1
fi

$NO_VNC_HOME/utils/novnc_proxy --vnc 0.0.0.0:5900 --listen 6080

