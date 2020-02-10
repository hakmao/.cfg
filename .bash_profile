source $HOME/.profile
source $HOME/.bashrc
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
eval "$(rbenv init -)"
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# Use Fish as interactive shell
#exec fish

export PATH="$HOME/.cargo/bin:$PATH"

source /Users/jcf/Library/Preferences/org.dystroy.broot/launcher/bash/br
