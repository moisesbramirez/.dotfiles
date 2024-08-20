source ~/.bash_profile

# prompt
source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh

HISTSIZE=10000000
SAVEHIST=10000000

HISTORY_IGNORE="(ls|cd|pwd|exit|cd|nvim|lazygit|storenet|dev|dot|pv|dt|sn)*"

setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS
setopt HIST_VERIFY
setopt APPEND_HISTORY
setopt HIST_NO_STORE
setopt HIST_REDUCE_BLANKS
HIST_STAMPS="yyyy-mm-dd"

alias dev='cd ~/dev'
alias dot='cd ~/dev/.dotfiles'
alias pv='cd ~/dev/providence'
alias dt='cd ~/dev/devtools && rbenv global system'
alias sn='cd ~/dev/storenet && rbenv global 3.3.0'

# vim mode
bindkey -v

export LG_CONFIG_FILE="$HOME/dev/.dotfiles/.lazygit_config"

export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
export PUPPETEER_EXECUTABLE_PATH=`which chromium`
export GRIT_TELEMETRY_DISABLED=true

source <(fzf --zsh)

eval "$(rbenv init - zsh)"
# Check that the function `starship_zle-keymap-select()` is defined.
# xref: https://github.com/starship/starship/issues/3418
type starship_zle-keymap-select > /dev/null || \
{
  echo "Load starship"
  eval "$(starship init zsh)"
}


source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

. "/opt/homebrew/lib/node_modules/@getgrit/cli/node_modules/bin/env"
