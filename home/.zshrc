# ========= ENV =========
export EDITOR=nvim
export PAGER='less -r'
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/dev/scripts:$PATH"

# ========= HISTORY =========
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups hist_ignore_space share_history

# ========= OPTIONS =========
setopt braceexpand
setopt extendedglob

# ========= COMPLETION =========
fpath=(~/.zfunc $fpath)
autoload -Uz compinit
if [[ -n ~/.zcompdump(#qN.mh+24) ]]; then
    compinit -C
else
    compinit
fi

# ========= PROMPT =========
eval "$(starship init zsh)"

# ========= STARTUP TOOLS =========
if [[ $- == *i* ]]; then
  command -v fastfetch &>/dev/null && fastfetch
fi

# ========= ALIASES =========
alias ff='fastfetch'
if command -v eza &>/dev/null; then
    alias ls='eza --icons --color=auto --group-directories-first'
    alias ll='eza -al --icons --group-directories-first'
    alias la='eza -a --icons --group-directories-first'
    alias l='eza -1 --icons --group-directories-first'
    alias tree='eza -T --icons --color=auto --group-directories-first'
fi
alias ..='cd ..' ...='cd ../..'
alias wtr='curl wttr.in/Ufa,Russia,450071'
alias less='less -r'

# Cmake and builds
alias cmk='cmake -S . -B build -G Ninja -DCMAKE_EXPORT_COMPILE_COMMANDS=ON' # cmake configuration
alias cmkd='cmake -S . -B build-debug -G Ninja -DCMAKE_BUILD_TYPE=Debug' # debug
alias cmkr='cmake -S . -B build-release -G Ninja -DCMAKE_BUILD_TYPE=Release' # release
alias nb='ninja -C build'

# Git
alias gc='git commit'
alias gd='git difftool -t nvimtool'

# Get
alias get='aria2c -x 16 -s 16 -k 1M'

# Useful functions/aliases
cdmk() {
    if [ -z "$1" ]; then
        echo "Usage: cdmk <directory>"
        return 1
    fi

    mkdir -pv "$1"

    cd "$1" || return 1
}

# Zinit
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# === Zinit Annexes ===
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

# === Plugins ===
zinit wait lucid for \
    zsh-users/zsh-completions \
    MichaelAquilina/zsh-you-should-use

zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting
zinit light Aloxaf/fzf-tab
zinit light jeffreytse/zsh-vi-mode

