source ~/.bash_profile

# prompt
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
export KEYTIMEOUT=5

#change cursor depending on insert/normal
_fix_cursor() {
   echo -ne '\e[5 q'
}

precmd_functions+=(_fix_cursor)
