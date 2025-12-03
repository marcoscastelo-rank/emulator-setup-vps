#!/bin/bash
set -e

curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt install -y nodejs

sudo npm install -g appium
appium driver install uiautomator2
appium driver install xcuitest || true

echo "Appium e drivers instalados."
