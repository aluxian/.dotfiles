# vim:fileencoding=utf-8:ft=conf:foldmethod=marker

# Archey init {{{

# show Apple logo
(archey --offline &)

# }}}

# $PATH config {{{

# ruby
export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/2.6.0/bin/:$PATH"

# python
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

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

# Homebrew init {{{

eval $(brew shellenv)

# }}}

# Zplugin init {{{

source "$HOME/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

# }}}

# Zplugin plugins {{{

zplugin ice lucid
zplugin light willghatch/zsh-saneopt

zplugin ice pick'async.zsh' src'pure.zsh'
zplugin light sindresorhus/pure

zplugin ice atclone'dircolors -b LS_COLORS > clrs.zsh' atpull'%atclone' pick'clrs.zsh' nocompile'!' atload'zstyle ':completion:*' list-colors “${(s.:.)LS_COLORS}”'
zplugin light trapd00r/LS_COLORS

zplugin ice lucid
zplugin light 'chrissicool/zsh-256color'

zplugin ice wait'0' lucid blockf
zplugin light zsh-users/zsh-completions

zplugin ice wait'0' lucid atinit'ZPLGM[COMPINIT_OPTS]=-C; zpcompinit; zpcdreplay'
zplugin light zdharma/fast-syntax-highlighting

zplugin ice wait'0' lucid atload'!_zsh_autosuggest_start'
zplugin load zsh-users/zsh-autosuggestions

zplugin ice wait'0' lucid
zplugin snippet OMZ::plugins/git/git.plugin.zsh

zplugin ice wait'1' lucid
zplugin light b4b4r07/enhancd

zplugin ice wait'1' lucid
zplugin light mafredri/zsh-async

zplugin ice wait'1' lucid
zplugin light MichaelAquilina/zsh-you-should-use

zplugin ice wait'1' lucid
zplugin snippet OMZ::plugins/common-aliases/common-aliases.plugin.zsh

zplugin ice wait'1' lucid pick'manydots-magic' compile'manydots-magic'
zplugin light knu/zsh-manydots-magic

zplugin ice wait'1' lucid
zplugin light supercrabtree/k

zplugin ice wait'2' lucid as'program' pick'bin/git-dsf'
zplugin light zdharma/zsh-diff-so-fancy

zplugin ice wait'2' lucid blockf
zplugin snippet OMZ::plugins/fzf/fzf.plugin.zsh

zplugin ice wait'2' lucid blockf
zplugin snippet OMZ::plugins/brew/brew.plugin.zsh

zplugin ice wait'2' lucid blockf
zplugin snippet 'https://raw.githubusercontent.com/chipp/dotfiles/f172f33/.oh-my-zsh/custom/plugins/fastlane/fastlane.plugin.zsh'

zplugin ice wait'2' lucid
zplugin snippet OMZ::plugins/gitignore/gitignore.plugin.zsh

zplugin ice wait'2' lucid atload'!ZSH_TMUX_FIXTERM=false'
zplugin snippet OMZ::plugins/tmux/tmux.plugin.zsh

zplugin ice wait'2' lucid
zplugin snippet OMZ::plugins/dash/dash.plugin.zsh

zplugin ice wait'2' lucid
zplugin snippet OMZ::plugins/encode64/encode64.plugin.zsh

zplugin ice wait'2' lucid
zplugin snippet OMZ::plugins/yarn/yarn.plugin.zsh

zplugin ice wait'2' lucid
zplugin snippet OMZ::plugins/sudo/sudo.plugin.zsh

zplugin ice wait'2' lucid
zplugin snippet OMZ::plugins/npx/npx.plugin.zsh

zplugin ice wait"2" lucid 
zplugin snippet OMZ::plugins/gradle/gradle.plugin.zsh

zplugin ice wait'2' lucid
zplugin snippet OMZ::plugins/transfer/transfer.plugin.zsh

zplugin ice wait'2' lucid
zplugin snippet OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh

zplugin ice wait'2' lucid
zplugin light lukechilds/zsh-better-npm-completion

zplugin ice wait'2' lucid as'program' pick"$ZPFX/bin/git-now" make"prefix=$ZPFX install"
zplugin light iwata/git-now

zplugin ice wait'2' lucid as'program' pick"$ZPFX/bin/git-alias" make"PREFIX=$ZPFX" nocompile
zplugin light tj/git-extras

zplugin ice wait'2' lucid as'program' atclone"perl Makefile.PL PREFIX=$ZPFX" atpull'%atclone' make'install' pick"$ZPFX/bin/git-cal"
zplugin light k4rthik/git-cal

zplugin ice wait'2' lucid as'command'
zplugin light paulirish/git-open

zplugin ice wait'3' as'completion' lucid blockf
zplugin snippet OMZ::plugins/adb/_adb

zplugin ice wait'3' lucid
zplugin light lukechilds/zsh-nvm

zplugin ice lucid
zplugin light onyxraven/zsh-osx-keychain

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
