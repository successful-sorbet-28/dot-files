# Replace ls with exa
alias ls 'exa -al --color=always --group-directories-first --icons' # preferred listing
alias la 'exa -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll 'exa -l --color=always --group-directories-first --icons'  # long format
alias lt 'exa -aT --color=always --group-directories-first --icons' # tree listing
alias ip 'ip -color'

# Replace some more things with better alternatives
alias cat 'bat --style header --style snip --style changes --style header'
[ ! -x /usr/bin/yay ] && [ -x /usr/bin/paru ] && alias yay='paru'

# Common use
alias grubup "sudo update-grub"
alias fixpacman "sudo rm /var/lib/pacman/db.lck"
alias tarnow 'tar -acf '
alias untar 'tar -xvf '
alias wget 'wget -c '
alias rmpkg "sudo pacman -Rdd"
alias psmem 'ps auxf | sort -nr -k 4'
alias psmem10 'ps auxf | sort -nr -k 4 | head -10'
alias upd '/usr/bin/garuda-update'
alias . 'cd ..'
alias .. 'cd ../..'
alias ... 'cd ../../..'
alias dir 'dir --color=auto'
alias vdir 'vdir --color=auto'
alias grep 'grep --color=auto'
alias fgrep 'grep -F --color=auto'
alias egrep 'grep -E --color=auto'
alias hw 'hwinfo --short'                          # Hardware Info
alias big "expac -H M '%m\t%n' | sort -h | nl"     # Sort installed packages according to size in MB

alias sudo 'sudo '

# Get fastest mirrors
alias update-mirrors "sudo reflector --verbose -l 200 -n 20 -p http --sort rate --save /etc/pacman.d/mirrorlist"

# git aliases
alias gs "git status --short --branch"
alias gb "git branch"
alias ga "git add"
alias gc "git commit --amend --no-edit"
alias gp "git push"
alias greset "git stash --include-untracked > /dev/null && git stash clear"
alias gitpkg 'pacman -Q | grep -i "\-git" | wc -l' # List amount of -git packages
alias git-graph "git log \
	--graph \
	--abbrev-commit \
	--decorate \
	--format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)'"
alias brightness "xrandr --output eDP --brightness" 

# Cleanup orphaned packages
alias cleanup 'sudo pacman -Rns (pacman -Qtdq)'

# Check for missing files in pacman packages
alias missing 'sudo pacman -Qkq' 

# Get the error messages from journalctl
alias jctl "journalctl -p 3 -xb"

# Recent installed packages
alias rip "expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"

# pretty print the current users $PATH variable
alias lp "python -c \"import os; print(*os.getenv('PATH').split(':'), sep='\n')\""

# ipython no-confirm-exit
alias ipython "ipython --no-confirm-exit"

# network monitoring
alias nethogs 'sudo nethogs'

# terraform
alias tf 'terraform'
alias tfv 'terraform validate'
alias tfi 'terraform init'
alias tfp 'terraform plan'

# misc
alias wtf "echo 'wtf indeed.'"
alias cry 'sh -c '"'"'echo ":'"'"'"'"'"'"'"'"'("'"'"''
