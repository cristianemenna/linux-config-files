export ZSH="/home/cristianemenna/.oh-my-zsh"
export PATH="/usr/share/code:$PATH"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="bureau"

# ENABLE_CORRECTION="true"

plugins=(git compleat copyfile emoji)

source $ZSH/oh-my-zsh.sh


# Run ProtonVPN connection when loads shell
 if protonvpn-cli status | grep  "No active ProtonVPN connection" 
 then
	protonvpn-cli c
 fi	

# Editor on remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

alias reload="source ~/.zshrc"
