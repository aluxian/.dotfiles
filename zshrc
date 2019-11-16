# vim:fileencoding=utf-8:ft=zsh:foldmethod=marker

# Homebrew init {{{

[ -f "$(which brew)" ] ||
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# }}}

# Zplugin init {{{

[ -d "$ZPLG_HOME" ] ||
  curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh | zsh
source "$ZPLG_HOME/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

# }}}

# Plugins {{{

zplg ice lucid atpull'_clear_cache_archey' atload'_cached_archey'
zplg light aluxian/archey-zsh

zplg ice pick'async.zsh' src'pure.zsh'
zplg light sindresorhus/pure

zplg ice lucid
zplg light onyxraven/zsh-osx-keychain

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
zplg snippet OMZ::plugins/yarn/yarn.plugin.zsh

zplg ice wait lucid
zplg snippet OMZ::plugins/dotenv/dotenv.plugin.zsh

zplg ice wait lucid
zplg snippet OMZ::plugins/git/git.plugin.zsh

zplg ice wait lucid atinit'ENHANCD_DISABLE_DOT=1'
zplg light b4b4r07/enhancd

zplg ice wait lucid
zplg light DarrinTisdale/zsh-aliases-exa

zplg ice wait lucid as'program' pick'bin/git-dsf'
zplg light zdharma/zsh-diff-so-fancy

zplg ice wait lucid as'program' pick'$ZPFX/ddcctl' make'ddcctl PREFIX=$ZPFX'
zplg light kfix/ddcctl

zplg ice wait lucid atinit='NVM_LAZY_LOAD=true NVM_NO_USE=true'
zplg light lukechilds/zsh-nvm

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
