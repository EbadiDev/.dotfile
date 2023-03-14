# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

#alias zshconfig="mate ~/.zshrc"
alias fuck="sudo pacman -Syu"
alias fucku="sudo pacman -Syyu"

# show ip/location/Timezone
alias fuckip="curl -s myadd.ir | head -n7"
# # alias ohmyzsh="mate ~/.oh-my-zsh"
alias connect="kitty +kitten ssh"
#
# # LVIM config
alias vim='/home/arch/.local/bin/lvim'
alias vimUpdate='/home/arch/.local/bin/lvim +LvimUpdate +q'

# personal stuff
alias archm="zfxtop"
alias derakht="cbonsai"
alias neofetch="neofetch --config .config/neofetch/neko.conf"
alias ali='
echo "Hello Ali," 
echo "Commands that you made"
echo "1. archm --> Arch Manager"
echo "2. derakht --> derakht maker parameteres ( --seed int --live -m "string" )"
echo "3. connect --> kitty ssh connect user@ip and manage with F1 "
echo "4. panel ( ssh connect to panel ) lon, nl, fra, iran"'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
