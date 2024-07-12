# Set the command prompt to display time, user, host, and current directory
PS1='\[\e[0m\]╔═ \[\e[0;1;2;4m\]\t \[\e[0m\][\[\e[0m\]\u\[\e[0m\]@\[\e[0m\]\H\[\e[0m\]] \[\e[0;96m\]\w\n\[\e[0m\]╚═ \[\e[0m\]\$ \[\e[0m\]'

# Set the color scheme for grep output
GREP_COLORS="ms=01;31:mc=01;31:sl=:cx=:fn=35:ln=32:bn=32:se=36" ; export GREP_COLORS

# Source the .bash_profile file, if it exists
[[ -s ~/.bash_profile ]] && source ~/.bash_profile

# Source the .bash_aliases file, if it exists
[[ -s ~/.bash_aliases ]] && source ~/.bash_aliases

# Source session-tool
source /home/mnordbye/Documents/Scripts/aws-session-tool/session-tool.sh
. "$HOME/.cargo/env"
source <(helm completion bash)
source <(kubectl completion bash)
. /etc/bash_completion
