# vim:fileencoding=utf-8:ft=zsh:foldmethod=marker

# ls
export CLICOLOR=1

# zsh
export HISTSIZE=100000
export SAVEHIST=100000
export HISTFILE="$XDG_DATA_HOME/zsh_history"

# neovim
export EDITOR=nvim

# gnupg
export GPG_TTY=`tty`

# cloudconvert-cli
export CLOUDCONVERT_API_KEY=$(keychain-environment-variable CLOUDCONVERT_API_KEY)

# rclone
export RCLONE_CONFIG_PASS=$(keychain-environment-variable RCLONE_CONFIG_PASS)

# hub + others
export GITHUB_TOKEN=$(keychain-environment-variable GITHUB_TOKEN)
