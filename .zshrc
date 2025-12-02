# -------------------------------------
# Powerlevel10k instant prompt (fast)
# -------------------------------------
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# -------------------------------------
# Oh-My-Zsh
# -------------------------------------
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git                 # Git shortcuts/aliases/autocomplete
  zsh-autosuggestions # Suggests commands from history
  zsh-syntax-highlighting # Colors commands as you type
)

source $ZSH/oh-my-zsh.sh

# -------------------------------------
# Powerlevel10k config
# -------------------------------------
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# -------------------------------------
# PATH fixes (Homebrew + custom tools)
# -------------------------------------
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/usr/local/opt/vim/bin:$PATH"
export PATH="$HOME/bin:$PATH"

# -------------------------------------
# Editor + locale
# -------------------------------------
export EDITOR="vim"
export LANG="en_US.UTF-8"

# -------------------------------------
# Aliases (very useful for you)
# -------------------------------------
alias ll="ls -lah"
alias gs="git status"
alias gl="git pull"
alias gp="git push"
alias gc="git add . && git commit -m"
alias tm="tmux"
alias v="vim"

# C++ compile shortcut
alias gpp="g++ -std=c++20 -Wall -Wextra -O2"

# ClickHouse build shortcut (optional)
# alias chbuild="cmake . && make -j$(sysctl -n hw.ncpu)"

# -------------------------------------
# Fix GPG issues (common on mac)
# -------------------------------------
export GPG_TTY=$(tty)
export PATH="/usr/local/opt/cmake/bin:$PATH"
export PATH="/usr/local/opt/binutils/bin:$PATH"
