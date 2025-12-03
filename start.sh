#!/bin/bash
export ANDROID_HOME="$HOME/Android/Sdk"
export ANDROID_SDK_ROOT="$HOME/Android/Sdk"
export PATH="$ANDROID_HOME/emulator:$ANDROID_HOME/platform-tools:$ANDROID_HOME/cmdline-tools/latest/bin:$PATH"

./android/start_emulator.sh
sleep 30
adb wait-for-device

./appium/start_appium.sh
./vnc/start_vnc.sh

echo "Tudo iniciado!"
