########################
### 取消限制安裝來源 ###
########################
sudo spctl --master-disable
# sudo spctl --master-enable

########################
### 取消Terminal招呼 ###
########################
touch ~/.hushlogin
# rm ~/.hushlogin

#############
### Dock  ###
#############
# 減少響應時間
defaults write com.apple.Dock autohide-delay -float 0
# defaults delete com.apple.Dock autohide-delay

# 減少動畫時間
defaults write com.apple.dock autohide-time-modifier -float 0.45
# defaults write com.apple.dock autohide-time-modifier -int 1

# 重新載入 Dock
killall Dock

################
### Homebrew ###
################
# 安裝
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# 更新
brew update

###############
### PACKAGE ###
###############
# 安裝 python3
brew install python3
# 安裝自動跳轉
brew install autojump

############
### Font ###
############
# 增加文字源安裝
brew tap homebrew/cask-fonts
# 安裝 inconsolata
brew cask install font-inconsolata
# 安裝 Non-ASCII font
brew cask install font-hack-nerd-font

###########
### APP ###
###########
# 安裝 google-chrome
brew cask install google-chrome
# 安裝 iTerm2
brew cask install iterm2
# 安裝 docker
brew cask install docker
# 安裝 翻頁鐘螢幕保護程式
brew cask install fliqlo

###########
### VIM ###
###########
# 安裝 Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# 安裝 狀態列插件
pip3 install powerline-status
# 安裝 Jedi 補齊
pip3 install jedi-vim
# 安裝 Jedi python補齊增益
pip3 install python-language-server
# 覆寫設定檔案
cp vimrc ~/.vimrc

###########
### ZSH ###
###########
# 安裝 zsh
brew install zsh
# 更新 zsh
brew upgrade zsh
# 修改預設shell為zsh
chsh -s /usr/local/bin/zsh
# 安裝 oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# 安裝 zsh-completions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
# 安裝 zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# 安裝 zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#################
### 啟動iTerm ###
#################
open -a /Applications/iTerm.app
