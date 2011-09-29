alias wip="bundle exec rake cucumber:wip"

function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "("${ref#refs/heads/}")"
}

PS1="\w \$(parse_git_branch) \$ "

. "$HOME/.bashrc"

[[ -s "/Users/jhoman/.rvm/scripts/rvm" ]] && source "/Users/jhoman/.rvm/scripts/rvm"  # This loads RVM into a shell session.
