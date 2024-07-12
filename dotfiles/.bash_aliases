# General aliases for better output
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -alF'
alias copy='xclip -selection clipboard'

# Bastion aliases
alias lb='ssh mnordbye@bf-linbast08.osl.basefarm.net'
alias lbs='ssh mnordbye@bf-linbast08.sth.basefarm.net'
alias lba='ssh mnordbye@bf-linbast08.ams.basefarm.net'
alias lbai='ssh mnordbye@ai-adm-lbast01.ai-admin.osl.basefarm.net'
# New Bastions
alias newlb='ssh mnordbye@bf-bastno-lin11.osl.basefarm.net'
# CPU governor related aliases
alias cpugetavail='cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_available_governors'
alias cpushow='cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
alias cpuhigh='echo performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'

# Tripwire alias
alias t="python3 ~/Documents/Scripts/OS-Scripts/Tripwire/tripwire.py ~/Downloads/mailpop3* && rm ~/Downloads//mail*"

# Battery-related alias
alias power='upower -i $(upower -e | grep 'BAT') | grep -E "state|to\ full|percentage"'

# WireGuard aliases (both upper and lower case)
alias VPN="sudo ~/Documents/Scripts/OS-Scripts/Wireguard-Script/Wireguard.sh"
alias vpn="sudo ~/Documents/Scripts/OS-Scripts/Wireguard-Script/Wireguard.sh"
# Silence notifction
alias sound-on="dunstctl set-paused false"
alias sound-off="dunstctl set-paused true"
# Screen INO
alias INO="sh /home/mnordbye/Documents/Scripts/OS-Scripts/Screen/INO.sh"
# Screen DC
alias DC="sh /home/mnordbye/Documents/Scripts/OS-Scripts/Screen/DC.sh"
# Screen CNO
alias CNO="sh /home/mnordbye/Documents/Scripts/OS-Scripts/Screen/CNO.sh"
# Scren Home
alias Home="sh /home/mnordbye/Documents/Scripts/OS-Scripts/Screen/Home.sh"
# Scren Home
alias Laptop="sh /home/mnordbye/Documents/Scripts/OS-Scripts/Screen/Laptop.sh"
