cd ~
sudo dnf upgrade -y
flatpak update -y
sudo dnf install zsh zsh-autosuggestions zsh-syntax-hylighting util-linux-user -y
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.powerlevel10k
wget https://raw.githubusercontent.com/Penglyn/dotfiles/main/.zshrc
sudo chsh $USER -s /bin/zsh