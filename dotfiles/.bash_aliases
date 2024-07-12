# General aliases for better output
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -alF'
alias copy='xclip -selection clipboard'

# CPU governor related aliases
alias cpugetavail='cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_available_governors'
alias cpushow='cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
alias cpuhigh='echo performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'

# Battery-related alias
alias power='upower -i $(upower -e | grep 'BAT') | grep -E "state|to\ full|percentage"'

# WireGuard aliases (both upper and lower case)
alias VPN="sudo ~/Documents/Scripts/OS-Scripts/Wireguard-Script/Wireguard.sh"
alias vpn="sudo ~/Documents/Scripts/OS-Scripts/Wireguard-Script/Wireguard.sh"
# Silence notification
alias sound-on="dunstctl set-paused false"
alias sound-off="dunstctl set-paused true"

# Make directory and change to it
alias mcd='mkdir -p "$1" && cd "$1"'

# Extract function for various archive types
extract() {
  if [ -f "$1" ] ; then
    case "$1" in
      *.tar.bz2)   tar xjf "$1"    ;;
      *.tar.gz)    tar xzf "$1"    ;;
      *.bz2)       bunzip2 "$1"    ;;
      *.rar)       unrar x "$1"    ;;
      *.gz)        gunzip "$1"     ;;
      *.tar)       tar xf "$1"     ;;
      *.tbz2)      tar xjf "$1"    ;;
      *.tgz)       tar xzf "$1"    ;;
      *.zip)       unzip "$1"      ;;
      *.Z)         uncompress "$1" ;;
      *.7z)        7z x "$1"       ;;
      *)           echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# Git aliases
alias ga='git add'
alias gb='git branch'
alias gc='git commit -m'
alias gco='git checkout'
alias gd='git diff'
alias gl='git pull'
alias gp='git push'
alias gs='git status'

# Alias htop for easy access
alias top='htop'
