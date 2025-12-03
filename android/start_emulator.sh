#!/bin/bash
export DISPLAY=:1

AVD_NAME="Pixel_KVM"

echo "===== INICIANDO Xvfb ====="
Xvfb :1 -screen 0 1080x1920x24 &
sleep 2

echo "===== INICIANDO x11vnc ====="
x11vnc -display :1 -nopw -listen 0.0.0.0 -xkb -forever -shared &
sleep 2

echo "===== INICIANDO noVNC ====="
# Ajuste se seu noVNC estiver em outro caminho
/home/marcos_castelo/noVNC/utils/novnc_proxy --vnc localhost:5900 --listen 6080 &
sleep 3

echo "===== INICIANDO EMULADOR ($AVD_NAME) ====="
$ANDROID_SDK_ROOT/emulator/emulator \
  -avd $AVD_NAME \
  -gpu swiftshader_indirect \
  -verbose \
  -qemu -display none &

echo "===== TODOS OS SERVIÇOS INICIADOS ====="

