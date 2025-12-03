#!/bin/bash

mkdir -p ~/.vnc
echo "$1" | vncpasswd -f > ~/.vnc/passwd
chmod 600 ~/.vnc/passwd

echo "#!/bin/bash
xrdb $HOME/.Xresources
startxfce4 &" > ~/.vnc/xstartup

chmod +x ~/.vnc/xstartup
