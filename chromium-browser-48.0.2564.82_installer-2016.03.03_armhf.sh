#/bin/bash
# More info at: https://www.raspberrypi.org/forums/viewtopic.php?t=121195
# Script created by Joe X (JxM S.A.)
wget https://dl.dropboxusercontent.com/u/87113035/chromium-browser-l10n_48.0.2564.82-0ubuntu0.15.04.1.1193_all.deb
wget https://dl.dropboxusercontent.com/u/87113035/chromium-browser_48.0.2564.82-0ubuntu0.15.04.1.1193_armhf.deb
wget https://dl.dropboxusercontent.com/u/87113035/chromium-codecs-ffmpeg-extra_48.0.2564.82-0ubuntu0.15.04.1.1193_armhf.deb
sudo apt-get -y install gconf-service libgconf-2-4 libgnome-keyring0 libnspr4 libnss3 xdg-utils youtube-dl coreutils libc6 libx11-6 x11-common xauth xserver-xorg xterm xinit
sudo dpkg -i chromium-codecs-ffmpeg-extra_48.0.2564.82-0ubuntu0.15.04.1.1193_armhf.deb
sudo dpkg -i chromium-browser-l10n_48.0.2564.82-0ubuntu0.15.04.1.1193_all.deb chromium-browser_48.0.2564.82-0ubuntu0.15.04.1.1193_armhf.deb
