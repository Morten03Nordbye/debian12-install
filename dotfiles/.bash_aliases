# General aliases for better output
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -alF'
alias copy='xclip -selection clipboard'

# CPU governor related aliases
alias cpugetavail='cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_available_governors'
alias cpushow='cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
alias cpuhigh='echo performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'

# WireGuard aliases (both upper and lower case)
alias VPN='sudo ~/Documents/Scripts/OS-Scripts/Wireguard-Script/Wireguard.sh'
alias vpn='sudo ~/Documents/Scripts/OS-Scripts/Wireguard-Script/Wireguard.sh'

