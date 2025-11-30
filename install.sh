# Install dependencies
sudo apt install python3-venv   # Required for pylsp
sudo apt install ripgrep        # Required for telescope grep
sudo apt install unzip          # Required for clang lsp
sudo apt install stow           # Required for symlinks
stow .

# Install tmux
sudo apt install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source ~/.tmux.conf

# Install nvim
sudo apt-get install ninja-build gettext cmake curl build-essential git
git clone https://github.com/neovim/neovim
cd neovim
git checkout stable
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
cd ..


# zsh configuration
sudo apt install zsh
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.zsh/zsh-autosuggestions/
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting/
chsh -s $(which zsh)
# restart terminal
