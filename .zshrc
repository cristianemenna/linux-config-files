export ZSH="/home/cristianemenna/.oh-my-zsh"
export PATH="/usr/share/code:$PATH"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="bureau"

# ENABLE_CORRECTION="true"

plugins=(git compleat copyfile emoji)

source $ZSH/oh-my-zsh.sh


# Run ProtonVPN connection on shell init
 if protonvpn-cli status | grep  "No active ProtonVPN connection" 
 then
	protonvpn-cli c
 fi	

alias reload="source ~/.zshrc"
