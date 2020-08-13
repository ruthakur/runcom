set fish_greeting ""

set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases
alias ls "ls -p -G"
alias la "ls -A"
alias g git
command -qv nvim && alias vim nvim

set -gx EDITOR nvim

set -gx MAVEN_HOME $HOME/softs/apache-maven-3.8.1
set -gx JAVA_HOME /Library/Java/JavaVirtualMachines/zulu-8.jdk/Contents/Home


set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH
set -gx PATH $JAVA_HOME/bin $PATH
set -gx PATH $MAVEN_HOME/bin $PATH

set -gx PATH $HOME/softs/cf $PATH

# NodeJS
set -gx PATH node_modules/.bin $PATH

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

# NVM
set -gx NVM_DIR $HOME/.nvm
function nvm
   bass source $NVM_DIR/nvm.sh --no-use ';' nvm $argv
end

nvm use default --silent

# Configuration for node to trust the PayPal Proxy Certificates
set -gx NODE_EXTRA_CA_CERTS /usr/local/etc/openssl/certs/paypal_proxy_cacerts.pem


switch (uname)
  case Darwin
    source (dirname (status --current-filename))/config-osx.fish
  case Linux
    # Do nothing
  case '*'
    source (dirname (status --current-filename))/config-windows.fish
end

set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
  source $LOCAL_CONFIG
end
