# vim:fileencoding=utf-8:ft=conf:foldmethod=marker

# $PATH config {{{

# ruby
export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/2.6.0/bin/:$PATH"

# sqlite
export PATH="/usr/local/opt/sqlite/bin:$PATH"

# golang
export GOPATH="$HOME/.go"
export PATH="$GOPATH/bin:$PATH"

# Android
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/tools:$PATH"

# Visual Studio Code
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"

# }}}

# Zplugin init {{{

if ! test -d "$HOME/.zplugin"; then
  curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh
fi

source "$HOME/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

# }}}

# Zplugin plugins {{{

# system information tool
zplugin ice lucid pick'bin/archey' as'program' atload'archey --offline'
zplugin light obihann/archey-osx

# pretty, minimal and fast ZSH prompt
zplugin ice pick'async.zsh' src'pure.zsh'
zplugin light sindresorhus/pure

# keychain utilities for reading/writing secure environment vars
zplugin ice lucid
zplugin light onyxraven/zsh-osx-keychain

# a collection of LS_COLORS definitions
zplugin ice wait'0' lucid atclone'gdircolors -b LS_COLORS > c.zsh' atpull'%atclone' pick'c.zsh'
zplugin light trapd00r/LS_COLORS

zplugin ice wait'0' lucid blockf
zplugin light zsh-users/zsh-completions

zplugin ice wait'0' lucid atinit'ZPLGM[COMPINIT_OPTS]=-C; zpcompinit; zpcdreplay'
zplugin light zdharma/fast-syntax-highlighting

zplugin ice wait'0' lucid atload'_zsh_autosuggest_start'
zplugin light zsh-users/zsh-autosuggestions

zplugin ice wait'0' lucid
zplugin snippet OMZ::plugins/git/git.plugin.zsh

zplugin ice wait'0' lucid
zplugin light mroth/evalcache

zplugin ice wait'0' lucid atpull'ruby -e install' atload'_evalcache brew shellenv' nocompile''
zplugin light Homebrew/install

zplugin ice wait'0' lucid
zplugin light b4b4r07/enhancd

zplugin ice wait'0' lucid
zplugin light mafredri/zsh-async

zplugin ice wait'0' lucid
zplugin light MichaelAquilina/zsh-you-should-use

zplugin ice wait'0' lucid
zplugin snippet OMZ::plugins/common-aliases/common-aliases.plugin.zsh

zplugin ice wait'0' lucid pick'manydots-magic' compile'manydots-magic'
zplugin light knu/zsh-manydots-magic

zplugin ice wait'0' lucid
zplugin light supercrabtree/k

zplugin ice wait'1' lucid as'program' pick'bin/git-dsf'
zplugin light zdharma/zsh-diff-so-fancy

zplugin ice wait'1' lucid blockf
zplugin snippet OMZ::plugins/fzf/fzf.plugin.zsh

zplugin ice wait'1' lucid
zplugin snippet OMZ::plugins/brew/brew.plugin.zsh

zplugin ice wait'1' lucid blockf
zplugin snippet 'https://raw.githubusercontent.com/chipp/dotfiles/f172f33/.oh-my-zsh/custom/plugins/fastlane/fastlane.plugin.zsh'

zplugin ice wait'1' lucid
zplugin snippet OMZ::plugins/gitignore/gitignore.plugin.zsh

zplugin ice wait'1' lucid atload'ZSH_TMUX_FIXTERM=false'
zplugin snippet OMZ::plugins/tmux/tmux.plugin.zsh

zplugin ice wait'1' lucid
zplugin snippet OMZ::plugins/pyenv/pyenv.plugin.zsh

zplugin ice wait'1' lucid
zplugin snippet OMZ::plugins/dash/dash.plugin.zsh

zplugin ice wait'1' lucid
zplugin snippet OMZ::plugins/encode64/encode64.plugin.zsh

zplugin ice wait'1' lucid
zplugin snippet OMZ::plugins/yarn/yarn.plugin.zsh

zplugin ice wait'1' lucid
zplugin snippet OMZ::plugins/gradle/gradle.plugin.zsh

zplugin ice wait'1' lucid
zplugin snippet OMZ::plugins/dotenv/dotenv.plugin.zsh

zplugin ice wait'1' lucid
zplugin snippet OMZ::plugins/transfer/transfer.plugin.zsh

zplugin ice wait'1' lucid
zplugin snippet OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh

zplugin ice wait'1' lucid
zplugin light lukechilds/zsh-better-npm-completion

zplugin ice wait'1' lucid as'program' pick'$ZPFX/bin/git-now' make'prefix=$ZPFX install'
zplugin light iwata/git-now

zplugin ice wait'1' lucid as'program' pick'$ZPFX/bin/git-alias' make'PREFIX=$ZPFX' nocompile
zplugin light tj/git-extras

zplugin ice wait'1' lucid as'program' atclone'perl Makefile.PL PREFIX=$ZPFX' atpull'%atclone' make'install' pick'$ZPFX/bin/git-cal'
zplugin light k4rthik/git-cal

zplugin ice wait'1' lucid as'command'
zplugin light paulirish/git-open

zplugin ice wait'1' lucid as'completion' blockf
zplugin snippet OMZ::plugins/adb/_adb

zplugin ice wait'1' lucid as'program' pick'$ZPFX/ddcctl' make'ddcctl PREFIX=$ZPFX'
zplugin light kfix/ddcctl

zplugin ice wait'1' lucid atinit='NVM_LAZY_LOAD=true'
zplugin light lukechilds/zsh-nvm

# }}}

# Zsh init {{{

# use emacs mode editing
bindkey -e

# make Fn+Backspace work
bindkey "^[[3~" delete-char

# configure zsh
setopt share_history histignorealldups histignorespace

# zsh
export HISTSIZE=100000
export SAVEHIST=100000

# }}}

# saneopt TODO {{{

# options that should be mostly pretty agreeable

# no c-s/c-q output freezing
setopt noflowcontrol
# allow expansion in prompts
setopt prompt_subst
# this is default, but set for share_history
setopt append_history
# save each command's beginning timestamp and the duration to the history file
setopt extended_history
# display PID when suspending processes as well
setopt longlistjobs
# try to avoid the 'zsh: no matches found...'
setopt nonomatch
# report the status of backgrounds jobs immediately
setopt notify
# whenever a command completion is attempted, make sure the entire command path
# is hashed first.
setopt hash_list_all
# not just at the end
setopt completeinword
# use zsh style word splitting
setopt noshwordsplit
# allow use of comments in interactive code
setopt interactivecomments

if [[ -z "$ZSH_SANEOPT_INSANITY" ]]; then
    ZSH_SANEOPT_INSANITY=1
fi

if [[ "$ZSH_SANEOPT_INSANITY" -gt 0 ]]; then
    # in order to use #, ~ and ^ for filename generation grep word
    # *~(*.gz|*.bz|*.bz2|*.zip|*.Z) -> searches for word not in compressed files
    # don't forget to quote '^', '~' and '#'!
    setopt extended_glob
    
    # don't error out when unset parameters are used
    setopt unset
fi

###########
# These are some more options that might warrant being on higher insanity levels,
# but since I don't use them... I'll leave them out for now

# watch for everyone but me and root
#watch=(notme root)
# automatically remove duplicates from these arrays
#typeset -U path cdpath fpath manpath

# import new commands from the history file also in other zsh-session
#setopt share_history
# If a new command line being added to the history list duplicates an older
# one, the older command is removed from the list
#setopt histignorealldups
# remove command lines from the history list when the first character on the
# line is a space
#setopt histignorespace
# if a command is issued that can't be executed as a normal command, and the
# command is the name of a directory, perform the cd command to that directory.
#setopt auto_cd


# Don't send SIGHUP to background processes when the shell exits.
#setopt nohup
# make cd push the old directory onto the directory stack.
#setopt auto_pushd
# avoid "beep"ing
#setopt nobeep
# don't push the same dir twice.
#setopt pushd_ignore_dups
# * shouldn't match dotfiles. ever.
#setopt noglobdots

# }}}

# Misc env vars {{{

# ls
export CLICOLOR=1

# neovim
export EDITOR=nvim

# gnupg
export GPG_TTY=`tty`

# }}}

# Secrets (env vars) {{{

# cloudconvert-cli (installed with npm -g)
export CLOUDCONVERT_API_KEY=$(keychain-environment-variable CLOUDCONVERT_API_KEY)

# }}}
