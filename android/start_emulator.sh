#!/bin/bash

AVD_NAME="pixel6-api33"

$ANDROID_HOME/emulator/emulator \
  -avd "$AVD_NAME" \
  -no-boot-anim \
  -no-snapshot \
  -gpu swiftshader_indirect \
  -memory 8192 \
  -cores 4 \
  -qemu -enable-kvm &
