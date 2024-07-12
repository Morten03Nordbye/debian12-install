# Define color variables
GREEN='\[\033[0;32m\]'
WHITE='\[\033[0;37m\]'
RESET='\[\033[0m\]'

# Update PROMPT_COMMAND without color for the Git branch
PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 " (%s)")'

# Update PS1 to include color for the username, hostname, and the colon
PS1="${GREEN}\u@\h${RESET}\${PS1_CMD1}${WHITE}:${RESET}"

# Set the color scheme for grep output
GREP_COLORS="ms=01;31:mc=01;31:sl=:cx=:fn=35:ln=32:bn=32:se=36"
export GREP_COLORS

# Source the .bash_profile file, if it exists
[ -s ~/.bash_profile ] && source ~/.bash_profile

# Source the .bash_aliases file, if it exists
[ -s ~/.bash_aliases ] && source ~/.bash_aliases

