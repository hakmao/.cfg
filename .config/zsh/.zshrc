# JCF's config --basically, stolen from everywhere
source $HOME/.config/zsh/antigen.zsh

# Load oh-my-zsh library
antigen use oh-my-zsh

# Bundles from OMZ repository
antigen bundle git
#antigen bundle heroku
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting
antigen bundle zsh-users/zsh-syntax-highlighting

# Theme
antigen theme bira

# Apply Antigen settings
antigen apply

# Enable colors and change prompt:
#autoload -U colors && colors
#PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v

bindkey '^p' up-history
bindkey '^n' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

export KEYTIMEOUT=1

# emacs mode
#bindkey -e

# editor
export EDITOR=nvim

# Load aliases and shortcuts, if they exist
[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc"
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

# Load zsh-syntax-highlighting; should be last.
#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
