#!/bin/bash

AVD_NAME="pixel6-api33"

echo "no" | avdmanager create avd \
  --name "$AVD_NAME" \
  --package "system-images;android-33;google_apis_playstore;x86_64" \
  --device "pixel_6"

echo "AVD $AVD_NAME criado."
