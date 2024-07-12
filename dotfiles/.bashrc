# Dependencies and Installation Commands:
# Install all dependencies with:
# sudo apt-get install autojump thefuck fzf ripgrep htop  bash-completion grc

# Function to get the current git branch
parse_git_branch() {
  if git rev-parse --git-dir > /dev/null 2>&1; then
    echo " 🌿 $(git branch 2>/dev/null | grep '^*' | colrm 1 2)"
  else
    echo ""
  fi
}

# Define some colors and symbols
WHITE='\[\e[97m\]'
GREEN='\[\e[32m\]'
BLUE='\[\e[34m\]'
RESET='\[\e[0m\]'
PROMPT_SYMBOL='❯'

# Set the prompt with improved separation and new colors
PS1="${WHITE}\u@\h${RESET}:${BLUE}\w${GREEN}\$(parse_git_branch)${RESET}${WHITE}${PROMPT_SYMBOL}${RESET} "

# Set up GREP_COLORS for better visibility
GREP_COLORS="ms=01;31:mc=01;31:sl=:cx=:fn=35:ln=32:bn=32:se=36"
export GREP_COLORS

# Append to the history file, don't overwrite it
shopt -s histappend

# Save multi-line commands as single command
shopt -s cmdhist

# Larger history file
HISTFILESIZE=100000
HISTSIZE=100000

# Ignore duplicate commands and commands starting with spaces
HISTCONTROL=ignoreboth

# Add timestamp to history
HISTTIMEFORMAT='%F %T '

# Share history across terminals
PROMPT_COMMAND="history -a; history -n; $PROMPT_COMMAND"

# Enable color support for ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  eval "$(dircolors -b)"
  alias ls='ls --color=auto'
  alias dir='dir --color=auto'
  alias vdir='vdir --color=auto'
fi

# Enable bash completion
if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
elif [ -f /usr/local/etc/bash_completion ]; then
  . /usr/local/etc/bash_completion
fi

# Enable autojump
[[ -s /usr/share/autojump/autojump.sh ]] && source /usr/share/autojump/autojump.sh

# Enable thefuck
eval "$(thefuck --alias)"

# Source the .bash_profile file, if it exists
[[ -s ~/.bash_profile ]] && source ~/.bash_profile

# Source the .bash_aliases file, if it exists
[[ -s ~/.bash_aliases ]] && source ~/.bash_aliases

# Enable Helm autocompletion
command -v helm > /dev/null && source <(helm completion bash)

# Enable kubectl autocompletion
command -v kubectl > /dev/null && source <(kubectl completion bash)
