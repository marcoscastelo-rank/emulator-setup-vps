#!/bin/bash
set -e

VNC_DISPLAY=":1"
VNC_PORT=5901
NOVNC_PORT=6080

echo "===== Iniciando TigerVNC ====="
vncserver $VNC_DISPLAY -geometry 1280x800 -depth 24

echo "===== Iniciando noVNC ====="
cd ~/noVNC
./utils/novnc_proxy --vnc localhost:$VNC_PORT --listen $NOVNC_PORT &
echo $! > ~/.vnc/novnc.pid

echo "===== noVNC rodando em ====="
echo "http://$(curl -s ifconfig.me):$NOVNC_PORT"
