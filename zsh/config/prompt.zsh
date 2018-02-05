autoload colors && colors

git_prompt_info() {
 ref=$(git symbolic-ref HEAD 2>/dev/null) || return
 echo "${ref#refs/heads/}"
}

unpushed() {
  git cherry -v origin/$(git_branch) 2>/dev/null
}

git_branch() {
  echo $(git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

need_push() {
  if [[ $(unpushed) != "" ]]
  then
    echo " with %{$fg_bold[magenta]%}unpushed%{$reset_color%} "
  fi
}

git_dirty() {
  st=$(git status 2>/dev/null | tail -n 1)

  if [[ $st == "nothing to commit, working tree clean" ]]
  then
    echo "on %{$fg_bold[green]%}$(git_prompt_info)%{$reset_color%}"
  else
    echo "on %{$fg_bold[red]%}$(git_prompt_info)%{$reset_color%}"
  fi
}

directory_name() {
  echo "%{$fg_bold[cyan]%}%~%{$reset_color%}"
}

git_prompt() {
  if [[ -d ".git" ]]
  then
    echo $(git_dirty)$(need_push)
  fi
}

export PROMPT=$'\n$(directory_name) $(git_prompt)\n→ '
