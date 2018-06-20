alias g='git'
alias ls='ls --group-directories-first --color=auto'
alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CF'
alias gs='git status'

# ut-tools
alias uts='ut status'
alias utu='ut update'
alias utud='ut usedev'

#alias pgadmin4='. /home/nsndeck/pgadmin4/bin/activate; python /home/nsndeck/pgadmin4/lib/python2.7/site-packages/pgadmin4/pgAdmin4.py'
alias pgadmin4='. /home/nsndeck/pgadmin4_1.6/bin/activate; python /home/nsndeck/pgadmin4_1.6/lib/python2.7/site-packages/pgadmin4/pgAdmin4.py'

alias d='docker'
alias dps='docker ps --format "table {{.ID}}\t {{.Names}}\t {{.Status}}\t {{.Ports}}"'
alias dcl='docker container ls -a --format "table {{.ID}}\t {{.Names}}\t {{.Status}}\t {{.Ports}}"'
alias dil='docker image ls -a'
alias dxc='docker exec -ti'
