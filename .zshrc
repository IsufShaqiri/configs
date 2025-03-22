# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if not installed
if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add in Powerlevel10k
zinit ice depth=1; zinit light romkatv/powerlevel10k

# Add zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions 
zinit light zsh-users/zsh-autosuggestions 
zinit light Aloxaf/fzf-tab

# Add in oh-my-zsh snippets
zinit snippet OMZP::git
zinit snippet OMZP::archlinux
zinit snippet OMZP::sudo

# Load completions
autoload -U compinit && compinit
zinit cdreplay -q

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Emacs keybind
bindkey -e

#youtube download
alias yta-aac="yt-dlp --add-metadata -i --extract-audio --audio-format aac "
alias yta-best="yt-dlp --add-metadata -i --extract-audio --audio-format best "
alias yta-flac="yt-dlp --add-metadata -i --extract-audio --audio-format flac "
alias yta-mp3="yt-dlp --add-metadata -i --extract-audio --audio-format mp3 "
alias ytv-best="yt-dlp --add-metadata -i -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4 "
alias ytaudio="yt-dlp -f 'ba' -x --no-playlist --embed-metadata"
alias ytplaylist="yt-dlp -f 'ba' -x --embed-metadata"

alias ls="eza --color=auto --group-directories-first"
alias la='eza --color=auto -lahFg --group-directories-first'
alias ll='eza --color=auto -lhFg --group-directories-first'
alias l='eza --color=auto --group-directories-first'
alias lt='eza --color=auto -lhFt --group-directories-first'
alias grep="grep --color=auto"
alias s="startx"
alias v="nvim"
alias sz="source $HOME/.config/zsh/.zshrc"
alias vi="nvim"
alias pacman="sudo pacman"
alias SS="sudo systemctl"
alias ssn="sudo shutdown -h now"
alias sbn="sudo reboot -h now"
alias sfz="source $HOME/.zshrc"
alias tobash="chsh -s /bin/bash; echo 'Shell changed, now log out.'"
alias tozsh="chsh -s /bin/zsh; echo 'Shell changed, now log out.'"

## Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'left' vi-backward-char
bindkey -M menuselect 'down' vi-down-line-or-history
bindkey -M menuselect 'up' vi-up-line-or-history
bindkey -M menuselect 'right' vi-forward-char

# History configs
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Aa-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath' 

# Integrate fzf in zsh
eval "$(fzf --zsh)"
