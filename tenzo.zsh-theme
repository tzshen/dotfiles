function tenzo_git_prompt_info() {
  local ref
  ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
  ref=$(command git rev-parse --short HEAD 2> /dev/null) || return 0
  echo "(${ref#refs/heads/}) "
}

PROMPT='%{$fg[cyan]%}%~%{$reset_color%} %F{242}$(tenzo_git_prompt_info)'
PROMPT+="%(?:%{$fg[green]%}❯:%{$fg[red]%}❯)"
PROMPT+="%{$reset_color%} "