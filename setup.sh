#!/bin/bash
set -e

./system/install_dependencies.sh
./android/install_sdk.sh
./android/create_avd.sh
./appium/install_appium.sh
./vnc/install_vnc.sh your_vnc_password

echo "Setup completo!"
