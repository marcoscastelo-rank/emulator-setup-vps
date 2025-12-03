#!/bin/bash
set -e

sudo apt update
sudo apt install -y \
  openjdk-17-jdk \
  qemu-kvm \
  libvirt-daemon-system \
  libvirt-clients \
  bridge-utils \
  virt-manager \
  unzip \
  wget \
  curl \
  git \
  net-tools \
  xfce4 \
  tightvncserver

sudo usermod -aG kvm $USER
sudo usermod -aG libvirt $USER

echo "Dependências instaladas e permissões aplicadas."
