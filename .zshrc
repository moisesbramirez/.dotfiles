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

setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_SAVE_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
alias dotfiles='cd ~/dev/.dotfiles'

# vim mode
bindkey -v

export LG_CONFIG_FILE="$HOME/dev/.dotfiles/.lazygit_config"

export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
export PUPPETEER_EXECUTABLE_PATH=`which chromium`
