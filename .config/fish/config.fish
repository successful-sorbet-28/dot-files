# Starship prompt
if status --is-interactive
   source ("/usr/bin/starship" init fish --print-full-init | psub)
end


direnv hook fish | source

# Advanced command-not-found hook
if test -f /usr/share/doc/find-the-command/ftc.fish 
  source /usr/share/doc/find-the-command/ftc.fish
end

# Run fastfetch if session is interactive
if status --is-interactive && type -q fastfetch
   fastfetch -l Archcraft2
end

pyenv init - | source
