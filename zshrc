source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

setopt promptsubst
zinit ice wait'!0'

zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-syntax-highlighting

zinit snippet OMZ::plugins/git/git.plugin.zsh

zinit light denysdovhan/spaceship-prompt
export SPACESHIP_PROMPT_ADD_NEWLINE=false
export SPACESHIP_PROMPT_SEPARATE_LINE=false
export SPACESHIP_USER_SHOW=false

CONFIG_DIR="$HOME/.zshrc.d"
if [[ -d "$CONFIG_DIR" ]]
then
  for f in $CONFIG_DIR/*; do
    source $f
  done
fi
