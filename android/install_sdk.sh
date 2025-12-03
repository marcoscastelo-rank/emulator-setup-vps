#!/bin/bash
set -e

ANDROID_HOME="$HOME/Android/Sdk"
mkdir -p "$ANDROID_HOME"

wget -q https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip -O /tmp/cmdtools.zip
unzip -q /tmp/cmdtools.zip -d "$ANDROID_HOME/cmdline-tools"
mv "$ANDROID_HOME/cmdline-tools/cmdline-tools" "$ANDROID_HOME/cmdline-tools/tools"

export ANDROID_HOME
export PATH=$PATH:$ANDROID_HOME/emulator:$ANDROID_HOME/platform-tools:$ANDROID_HOME/cmdline-tools/tools/bin

yes | sdkmanager --licenses
sdkmanager "platform-tools" "platforms;android-33" "system-images;android-33;google_apis;x86_64" "emulator"

echo "SDK Android instalado com sucesso."
