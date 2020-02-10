# Load up standard site-wide settings.
#source /etc/bashrc
# System-wide .bashrc file for interactive bash(1) shells.
if [ -z "$PS1" ]; then
   return
fi

PS1='\h:\W \u\$ '

# Make bash check its window size after a process completes
shopt -s checkwinsize

[ -r "/etc/bashrc_$TERM_PROGRAM" ] && . "/etc/bashrc_$TERM_PROGRAM"
#remove duplicate entries from history
export HISTCONTROL=ignoreboth
# set history length
export HISTSIZE=10000
export HISTFILESIZE=10000
# add timestamp to history file
export HISTTIMEFORMAT="%F %T"
# append to history, don't overwrite
shopt -s histappend
# turn on extended pattern matching
shopt -q -s extglob

# set time zone for session
export TZ=Europe/London

# use vi-style line editing interface
set -o vi

# Show current git branch in prompt.
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
RED="\[\033[0;31m\]"
GREEN="\[\033[0;32m\]"
BROWN="\[\033[0;33m\]"
BLUE="\[\033[0;34m\]"
PURPLE="\[\033[0;35m\]"
CYAN="\[\033[0;36m\]"
LIGHT_RED="\[\033[1;31m\]"
LIGHT_GREEN="\[\033[1;32m\]"
LIGHT_BLUE="\[\033[1;34m\]"
LIGHT_PURPLE="\[\033[1;35m\]"
LIGHT_CYAN="\[\033[1;36m\]"
YELLOW="\[\033[1;33m\]"
LIGHT_GRAY="\[\033[0;37m\]"

#PS1="$LIGHT_GRAY\$(date +%H:%M) \w$YELLOW \$(parse_git_branch)$LIGHT_GREEN\$ $LIGHT_GRAY"
PS1="$BROWN\!$LIGHT_GREEN[\d, \A]$LIGHT_BLUE{\h:\w}$RED\$(parse_git_branch)$LIGHT_GREEN\n\$ $LIGHT_GRAY"
alias config='/usr/bin/git --git-dir=$HOME/cfg/ --work-tree=$HOME' 

source /Users/jcf/Library/Preferences/org.dystroy.broot/launcher/bash/br
