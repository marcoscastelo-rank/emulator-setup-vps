#!/bin/bash
echo "===== MATANDO TODOS OS PROCESSOS ====="
pkill -9 emulator || true
pkill -f qemu || true
pkill -f Xvfb || true
pkill -f x11vnc || true
pkill -f websockify || true
pkill -f novnc_proxy || true

rm -f /tmp/.X1-lock || true
rm -f /tmp/.X11-unix/X1 || true

echo "===== TODOS OS PROCESSOS FINALIZADOS ====="

