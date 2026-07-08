function gclean --description 'Clean up local branches that are gone on remote'
    git fetch -p
    and git branch -vv | awk '/: gone]/ {print ($1 == "*" ? $2 : $1)}' | xargs -r git branch -D
end
