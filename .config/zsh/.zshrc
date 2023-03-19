#
# zstyles
#
[[ -f $ZDOTDIR/.zstyles ]] && source $ZDOTDIR/.zstyles

#
# Antidote
#
ANTIDOTE_HOME=$ZDOTDIR/plugins/.external

# Clone antidote if necessary.
[[ -e $ZDOTDIR/.antidote ]] ||
  git clone --depth=1 https://github.com/mattmc3/antidote.git $ZDOTDIR/.antidote


source $ZDOTDIR/.antidote/antidote.zsh
antidote load

#
# Paths
#
# Ensure path arrays do not contain duplicates.
typeset -gU path fpath cdpath mailpath

# Set the list of directories that zsh searches for commands.
path=(
    /opt/homebrew/bin
    $path
)

export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && . "$(brew --prefix)/opt/nvm/nvm.sh" # This loads nvm
[ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && . "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

# Pyenv
# _evalcache pyenv init -

# Starship Prompt
eval $(starship init zsh)
