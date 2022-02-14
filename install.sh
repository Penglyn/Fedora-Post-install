cd ~
sudo dnf upgrade -y
flatpak update -y
sudo dnf install zsh zsh-autosuggestions zsh-syntax-hylighting util-linux-user feh cronie xrandr -y
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.powerlevel10k
wget https://raw.githubusercontent.com/Penglyn/dotfiles/main/.zshrc
sudo chsh $USER -s /bin/zsh
git clone https://github.com/adi1090x/dynamic-wallpaper.git
dynamic-wallpaper/install.sh
echo "0 * * * * env PATH=$PATH DISPLAY=$DISPLAY DESKTOP_SESSION=$DESKTOP_SESSION DBUS_SESSION_BUS_ADDRESS=$DBUS_SESSION_BUS_ADDRESS /usr/bin/dwall -s forest" >> crontab
crontab crontab
rm crontab
rm -rf dynamic-wallpaper
sudo reboot