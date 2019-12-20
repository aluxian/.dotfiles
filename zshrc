# vim:fileencoding=utf-8:ft=zsh:foldmethod=marker

# load functions {{{

fpath=("$XDG_CONFIG_HOME/zsh/functions" $fpath)
autoload -Uz "$XDG_CONFIG_HOME/zsh/functions/*"

# }}}

# Zplugin init {{{

typeset -A ZPLGM
ZPLGM[HOME_DIR]=$ZPLG_HOME_DIR
ZPLGM[ZCOMPDUMP_PATH]=$ZPLG_ZCOMPDUMP_PATH
source "$ZPLG_HOME_DIR/bin/zplugin.zsh"

# }}}

# Plugins {{{

zplg ice lucid atpull'_clear_cache_archey' atload'_cached_archey'
zplg light aluxian/archey-zsh

zplg ice pick'async.zsh' src'pure.zsh'
zplg light sindresorhus/pure

zplg ice lucid
zplg light onyxraven/zsh-osx-keychain

zplg ice lucid
zplg snippet OMZ::plugins/git/git.plugin.zsh

zplg ice wait lucid
zplg snippet OMZ::plugins/brew/brew.plugin.zsh

zplg ice wait lucid blockf
zplg snippet OMZ::plugins/fzf/fzf.plugin.zsh

zplg ice wait lucid
zplg snippet OMZ::plugins/gitignore/gitignore.plugin.zsh

zplg ice wait lucid atload'ZSH_TMUX_FIXTERM=false'
zplg snippet OMZ::plugins/tmux/tmux.plugin.zsh

zplg ice wait lucid
zplg snippet OMZ::plugins/dash/dash.plugin.zsh

zplg ice wait lucid
zplg snippet OMZ::plugins/rbenv/rbenv.plugin.zsh

zplg ice wait lucid
zplg snippet OMZ::plugins/pyenv/pyenv.plugin.zsh

zplg ice wait lucid
zplg snippet OMZ::plugins/yarn/yarn.plugin.zsh

zplg ice wait lucid
zplg snippet OMZ::plugins/dotenv/dotenv.plugin.zsh

zplg ice wait lucid pick'.kubectl_aliases'
zplg light ahmetb/kubectl-aliases

zplg ice wait lucid
zplg light b4b4r07/enhancd

zplg ice wait lucid
zplg light DarrinTisdale/zsh-aliases-exa

zplg ice wait lucid as'program' pick'bin/git-dsf'
zplg light zdharma/zsh-diff-so-fancy

zplg ice wait lucid as'program' pick'$ZPFX/ddcctl' make'ddcctl PREFIX=$ZPFX'
zplg light kfix/ddcctl

zplg ice wait lucid
zplg light lukechilds/zsh-nvm

zplg ice wait lucid blockf
zplg light zsh-users/zsh-completions

zplg ice wait lucid
zplg light zsh-users/zsh-autosuggestions

zplg ice wait lucid
zplg light mollifier/cd-gitroot

zplg ice wait lucid from'gh-r' as'program' mv'uni* -> uni' pick'uni'
zplg light arp242/uni

zplg ice wait lucid from'gh-r' as'program' mv'dbxcli* -> dbxcli' pick'dbxcli'
zplg light dropbox/dbxcli

zplg ice wait lucid atinit'zpcompinit; zpcdreplay'
zplg light zdharma/fast-syntax-highlighting

zplg ice wait lucid blockf pick'manydots-magic'
zplg light knu/zsh-manydots-magic

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

# }}}
