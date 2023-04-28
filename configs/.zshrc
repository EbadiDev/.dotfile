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
alias fuckip="curl -s myadd.ir | head -n7"
alias speedtest="curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -"
# # alias ohmyzsh="mate ~/.oh-my-zsh"
alias connect="kitty +kitten ssh"
#
# # LVIM config
alias vim='/home/arch/.local/bin/lvim'
alias vimUpdate='/home/arch/.local/bin/lvim +LvimUpdate +q'
# # alias my servers conf :
alias lon='connect root@209.97.176.159'
alias nl='connect root@146.190.237.130'
alias fra='connect root@138.68.92.2 -p 1378'
alias panel='connect root@45.92.94.8'
alias iran='connect root@80.71.149.89 -p 1378'
alias hozix='connect root@185.173.106.194'
# personal stuff
alias qt6='qt6-tools designer'
alias jva='sudo java -jar'
alias ana='conda config --set auto_activate_base true'
alias unana='conda config --set auto_activate_base false'
alias updateconda='conda update -n base -c defaults conda'
alias cls='clear'
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
# starship 
# eval "$(starship init zsh)"

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/arch/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/arch/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/arch/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/arch/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
