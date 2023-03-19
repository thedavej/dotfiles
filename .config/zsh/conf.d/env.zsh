# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

#
# Misc
#
export BOOKMARKS_FILE=${ZDOTDIR:-~}/.bookmarks
export ZSH_EVALCACHE_DIR=${ZDOTDIR:-~}/.zsh-evalcache
