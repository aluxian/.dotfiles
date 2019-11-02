# vim:fileencoding=utf-8:ft=zsh:foldmethod=marker

# ls
export CLICOLOR=1

# zsh
export HISTSIZE=100000
export SAVEHIST=100000

# neovim
export EDITOR=nvim

# gnupg
export GPG_TTY=`tty`

# cloudconvert-cli
export CLOUDCONVERT_API_KEY=$(keychain-environment-variable CLOUDCONVERT_API_KEY)
