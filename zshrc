# vim:fileencoding=utf-8:ft=zsh:foldmethod=marker

# load functions {{{

fpath=("$XDG_CONFIG_HOME/zsh/functions" $fpath)
autoload -Uz $XDG_CONFIG_HOME/zsh/functions/*

# }}}

# Zinit init {{{

typeset -A ZINITM
ZINITM[HOME_DIR]=$ZINIT_HOME_DIR
ZINITM[ZCOMPDUMP_PATH]=$ZINIT_ZCOMPDUMP_PATH
source "$ZINIT_HOME_DIR/bin/zinit.zsh"

# }}}

# Plugins {{{

#zinit ice lucid atpull'_clear_cache_archey' atload'_cached_archey'
#zinit light aluxian/archey-zsh

zinit ice pick'async.zsh' src'pure.zsh'
zinit light sindresorhus/pure

zinit ice lucid
zinit light onyxraven/zsh-osx-keychain

zinit ice lucid
zinit snippet OMZ::plugins/git/git.plugin.zsh

zinit ice wait lucid
zinit snippet OMZ::plugins/brew/brew.plugin.zsh

zinit ice wait lucid blockf
zinit snippet OMZ::plugins/fzf/fzf.plugin.zsh

zinit ice wait lucid
zinit snippet OMZ::plugins/gitignore/gitignore.plugin.zsh

zinit ice wait lucid atload'ZSH_TMUX_FIXTERM=false'
zinit snippet OMZ::plugins/tmux/tmux.plugin.zsh

zinit ice wait lucid
zinit snippet OMZ::plugins/dash/dash.plugin.zsh

zinit ice wait lucid
zinit snippet OMZ::plugins/yarn/yarn.plugin.zsh

zplg ice wait lucid
zplg snippet OMZ::plugins/npm/npm.plugin.zsh

zplg ice wait lucid
zplg snippet OMZ::plugins/dotenv/dotenv.plugin.zsh

zinit ice wait lucid pick'.kubectl_aliases'
zinit light ahmetb/kubectl-aliases

zinit ice wait lucid
zinit light b4b4r07/enhancd

zinit ice wait lucid
zinit light DarrinTisdale/zsh-aliases-exa

zinit ice wait lucid as'program' pick'bin/git-dsf'
zinit light zdharma/zsh-diff-so-fancy

zinit ice wait lucid as'program' pick'$ZPFX/ddcctl' make'ddcctl PREFIX=$ZPFX'
zinit light kfix/ddcctl

zinit ice wait lucid
zinit light lukechilds/zsh-nvm

zinit ice wait lucid blockf
zinit light zsh-users/zsh-completions

zinit ice wait lucid
zinit light zsh-users/zsh-autosuggestions

zinit ice wait lucid
zinit light mollifier/cd-gitroot

zinit ice wait lucid from'gh-r' as'program' mv'uni* -> uni' pick'uni'
zinit light arp242/uni

zinit ice wait lucid from'gh-r' as'program' mv'dbxcli* -> dbxcli' pick'dbxcli'
zinit light dropbox/dbxcli

zinit ice wait lucid atinit'zpcompinit; zpcdreplay'
zinit light zdharma/fast-syntax-highlighting

zinit ice wait lucid blockf pick'manydots-magic'
zinit light knu/zsh-manydots-magic

# }}}

# Zsh config {{{

# use emacs editing mode
bindkey -e

# make Fn+Backspace delete
bindkey "^[[3~" delete-char

# no c-s/c-q output freezing
setopt noflowcontrol

# share command history with other zsh sessions
setopt share_history

# don't save duplicate entries in history
setopt histignorealldups

# don't save commands starting with a space
setopt histignorespace

# allow use of comments in interactive code
setopt interactivecomments

# }}}

# Aliases {{{

# git
alias gb='git branch --sort=-committerdate'
alias ggsup='git branch --set-upstream-to=origin/$(git symbolic-ref --short HEAD)'
alias gpsup='git push --set-upstream origin $(git symbolic-ref --short HEAD)'

# }}}
