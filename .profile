# jcf's .profile

## Exports

### Golang
export GOROOT=/usr/local/opt/go
export GOPATH="$HOME/Projects/Go"

### JVM / Java / Scala
export SCALA_HOME=/usr/local/opt/scala/idea
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
#export CLASSPATH=${CLASSPATH}:$HOME/Library/Java/Extensions
#export CLASSPATH=${CLASSPATH}:.:$HOME/Library/Java/Extensions/yuicompressor-2.4.8.jar

### Python
#export WORKON_HOME=~/.virtualenvs
#export PIP_REQUIRE_VIRTUALENV=true
# load virtualenvwrapper
#if [[ -s '/usr/local/bin/virtualenvwrapper.sh' ]]; then
#  source '/usr/local/bin/virtualenvwrapper.sh'
#fi

### NVM
export NVM_DIR="$HOME/.nvm"
source "/usr/local/opt/nvm/nvm.sh"

### Postgresql
#export PG_USER="jcf"
#export pg_pass="yadda"
#export DATABASE_URL="/usr/var/local/postgres"

### Mono
export MONO_GAC_PREFIX="/usr/local"

## Path
#PATH="$PATH:/usr/local/opt/go/bin:$GOPATH/bin" # Add GOPATH to PATH for scripting
#PATH="/usr/local/bin:$PATH"
#PATH="$PATH:$HOME/npm/bin"#Add local npm directory
PATH="$HOME/.rbenv/bin:$PATH"
PATH="$PATH:/usr/local/opt/go/libexec/bin"
PATH="$PATH:$HOME/bin" # Add ~/bin to PATH for own scripts

export PATH

### Perlbrew
#[[ -s "$HOME/perl5/perlbrew/etc/bashrc" ]] && source "$HOME/perl5/perlbrew/etc/bashrc"

### iTerm
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export PATH="$HOME/.cargo/bin:$PATH"
