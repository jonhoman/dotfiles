function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "("${ref#refs/heads/}")"
}

PS1="\w \$(parse_git_branch) \$ "

#. "$HOME/.bashrc"

export PATH=bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/X11/bin:/Users/jhoman/bin
