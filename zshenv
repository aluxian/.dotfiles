# vim:fileencoding=utf-8:ft=zsh:foldmethod=marker

# XDG
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_BIN_HOME="$HOME/.local/bin"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"

# Homebrew
export HOMEBREW_PREFIX="/usr/local"
export HOMEBREW_CELLAR="/usr/local/Cellar"
export HOMEBREW_REPOSITORY="/usr/local/Homebrew"
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_INSECURE_REDIRECT=1

# less
export LESSHISTFILE="$XDG_CACHE_HOME/lesshst"

# node
export NODE_REPL_HISTORY="$XDG_CACHE_HOME/node_repl_history"

# npm
export NPM_CONFIG_CACHE="$XDG_CACHE_HOME/npm"

# nvm
export NVM_DIR="$XDG_DATA_HOME/nvm"
export NVM_LAZY_LOAD=true
export NVM_NO_USE=true

# tmux
export ZSH_TMUX_CONFIG="$XDG_CONFIG_HOME/tmux/tmux.conf"

# gradle
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"

# golang
export GOPATH="$XDG_DATA_HOME/go"
export GOBIN="$XDG_BIN_HOME"

# Android
export ANDROID_HOME="$HOME/Library/Android/sdk"

# pyenv 
export PYENV_ROOT="$XDG_DATA_HOME/pyenv"
export PYENV_SHELL="zsh"

# Zplugin
export ZPLG_HOME_DIR="$XDG_DATA_HOME/zplugin"
export ZPLG_ZCOMPDUMP_PATH="$XDG_CACHE_HOME/zcompdump"

# pipx
export PIPX_HOME="$XDG_DATA_HOME/pipx"
export PIPX_BIN_DIR="$XDG_BIN_HOME"
