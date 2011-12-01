# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="robbyrussell"

# SQL logging in script/console
export INLINE_LOGGING=true

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(cap git)

source $ZSH/oh-my-zsh.sh

alias wip="bundle exec rake cucumber:wip"
alias prepare_tests="bundle exec rake db:migrate:local"
alias boom="git pull --rebase && git prune && git remote prune origin && git gc && bundle install && bundle exec cap update_local && bundle exec rake assets:all:rebuild && prepare_tests"
alias groupon="cd ~/dev/groupon"
alias die_jasmine_die="ps ax | grep jasmine | grep -v grep | head -n1 | awk '{ print $1 }' | xargs kill -9"

# Customize to your needs...
export PATH=/Users/jhoman/.rvm/gems/ruby-1.9.2-p180/bin:/Users/jhoman/.rvm/gems/ruby-1.9.2-p180@global/bin:/Users/jhoman/.rvm/rubies/ruby-1.9.2-p180/bin:~/dev/groupon-git-utils/bin:bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/X11/bin

[[ -s "/Users/jhoman/.rvm/scripts/rvm" ]] && source "/Users/jhoman/.rvm/scripts/rvm"  # This loads RVM into a shell session.
