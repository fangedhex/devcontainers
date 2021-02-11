export ZSH="$HOME/.oh-my-zsh"

# Setup vars for Oh-My-Zsh
ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"
DISABLE_UPDATE_PROMPT="true"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_USE_ASYNC=1

# Setup Oh-My-Zsh plugins
plugins=(
  zsh-completions
  zsh-autosuggestions
  zsh-syntax-highlighting
  git
  git-extras
  git-flow
)

# We load Oh-My-Zsh
autoload -U compinit && compinit
source $ZSH/oh-my-zsh.sh

# We load every script inside our config directory
CONFIG_DIR="$HOME/.zshrc.d"
if [[ -d "$CONFIG_DIR" ]]
then
  for f in $CONFIG_DIR/*; do
    source $f
  done
fi
