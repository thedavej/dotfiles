# Set personal aliases, overriding those provided by oh-my-zsh libs,
# For a full list of active aliases, run `alias`.

# PHPUnit
alias phpunit='vendor/bin/phpunit'

# Better ls
alias ll='ls -lah'
alias ldot='ls -ld .*'

alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'

# date/time
alias timestamp="date '+%Y-%m-%d %H:%M:%S'"
alias datestamp="date '+%Y-%m-%d'"
alias isodate="date +%Y-%m-%dT%H:%M:%S%z"
alias utc="date -u +%Y-%m-%dT%H:%M:%SZ"
alias unixepoch="date +%s"

# misc
alias zshrc='${EDITOR:-nvim} "${ZDOTDIR:-$HOME}"/.zshrc'
alias zbench='for i in {1..10}; do /usr/bin/time zsh -lic exit; done'
alias zdot='cd $ZDOTDIR'
alias cls="clear && printf '\e[3J'"

# echo things
alias print-fpath='for fp in $fpath; do echo $fp; done; unset fp'
alias print-path='echo $PATH | tr ":" "\n"'
alias print-functions='print -l ${(k)functions[(I)[^_]*]} | sort'
