#!/bin/bash

./android/start_emulator.sh
sleep 30
adb wait-for-device

./appium/start_appium.sh
./vnc/start_vnc.sh

echo "Tudo iniciado!"
