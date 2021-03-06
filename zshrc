# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
export ZSH_THEME="robbyrussell"

# SQL logging in script/console
export INLINE_LOGGING=true

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/X11/bin:/Users/jhoman/bin:/Users/jhoman/.chefdk/gem/ruby/2.1.0/bin:/usr/local/heroku/bin

function jcurl() { curl -s -S $@ | python -m json.tool; }

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/jhoman/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;

# init rbenv
eval "$(rbenv init -)"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
