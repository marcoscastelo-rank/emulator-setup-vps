#!/bin/bash

export DISPLAY=:1
VNC_PORT=5900
NOVNC_PORT=6080

echo "===== INICIANDO Xvfb ====="
Xvfb :1 -screen 0 1080x1920x24 &
sleep 2

echo "===== INICIANDO EMULATOR ====="
$HOME/Android/Sdk/emulator/emulator \
    -avd pixel6-api3\
    -no-audio \
    -gpu swiftshader_indirect \
    -no-snapshot \
    -no-window \
    -qemu -cpu host &
sleep 10
