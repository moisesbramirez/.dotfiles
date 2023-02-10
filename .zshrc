source ~/.bash_profile

# prompt
source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh

function git_branch_name()
{
  branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null)
  if [[ $branch == "" ]];
  then
    :
  else
    echo $branch
  fi
}

setopt prompt_subst
prompt='%c:%B$(git_branch_name)%b: %n$ '

setopt HIST_SAVE_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE

# vim mode
bindkey -v
