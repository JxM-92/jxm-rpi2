#/bin/bash
# More info at: https://www.raspberrypi.org/forums/viewtopic.php?t=121195
# Script created by Joe X (JxM S.A.)
clear && echo $"Downloading Browser...\n"
wget https://dl.dropboxusercontent.com/u/87113035/chromium-browser-l10n_48.0.2564.82-0ubuntu0.15.04.1.1193_all.deb
wget https://dl.dropboxusercontent.com/u/87113035/chromium-browser_48.0.2564.82-0ubuntu0.15.04.1.1193_armhf.deb
wget https://dl.dropboxusercontent.com/u/87113035/chromium-codecs-ffmpeg-extra_48.0.2564.82-0ubuntu0.15.04.1.1193_armhf.deb
wget http://steinerdatenbank.de/software/kweb-1.6.9.tar.gz
clear && echo $"Installing Dependencies...\n"
sudo apt-get update && sudo apt-get -y upgrade
sudo apt-get -y install gdebi gconf-service libgconf-2-4 libgnome-keyring0 libnspr4 libnss3 xdg-utils youtube-dl libappindicator1 libindicator7 coreutils libc6 libx11-6 x11-common xauth xterm xinit lxterminal evince omxplayer uget tint2 vlc libpcre3 fonts-freefont-ttf fbset
sudo apt-get -y install omxplayer || wget https://dl.dropboxusercontent.com/u/33674660/Raspberry%20Pi%202/omxplayer_0.3.7-git20160206-cb91001_armhf.deb && sudo dpkg -i omxplayer_0.3.7~git20160206~cb91001_armhf.deb
clear && echo $"Installing Browser...\n"
tar -xzf kweb-1.6.9.tar.gz
cd kweb-1.6.9
sudo ./debinstall
cd ..
sudo dpkg -i chromium-codecs-ffmpeg-extra_48.0.2564.82-0ubuntu0.15.04.1.1193_armhf.deb
sudo dpkg -i chromium-browser-l10n_48.0.2564.82-0ubuntu0.15.04.1.1193_all.deb chromium-browser_48.0.2564.82-0ubuntu0.15.04.1.1193_armhf.deb
