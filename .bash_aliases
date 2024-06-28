alias g='git'
if [ "$OSTYPE" = "linux-gnu" ]; then
    alias ls='ls --group-directories-first --color=auto'
else
    alias ls='gls --group-directories-first --color=auto'
fi
alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CF'
alias recent='ls -ltr | tail -8'
#git aliases
alias gs='git status'
alias gcm='git checkout master'
alias gri='git rebase -i HEAD~2'
alias grm='git rebase master'
alias gplf='g pl && gfa'

#alias pgadmin4='. /home/nsndeck/pgadmin4/bin/activate; python /home/nsndeck/pgadmin4/lib/python2.7/site-packages/pgadmin4/pgAdmin4.py'
#alias pgadmin4='. /home/nsndeck/pgadmin4_1.6/bin/activate; python /home/nsndeck/pgadmin4_1.6/lib/python2.7/site-packages/pgadmin4/pgAdmin4.py'

alias d='docker'
alias dps='docker ps --format "table {{.ID}}\t {{.Names}}\t {{.Status}}\t {{.Ports}}"'
#alias dcl='docker container ls -a --format "table {{.ID}}\t {{.Names}}\t {{.Status}}\t {{.Ports}}"'
alias dcl='docker container ls -a --format "table {{.ID}}\t {{.Names}}\t {{.Image}}\t {{.Status}}\t {{.Ports}}"'
alias dil='docker image ls -a'
alias dxc='docker exec -ti'

#alias java8='export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_192.jdk/Contents/Home'
#alias java11_7='export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.7.jdk/Contents/Home'
#alias java11_12='export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.12.jdk/Contents/Home'

#default java 11
java11_12

alias drdi='docker rmi $(docker image ls -q -f "dangling=true")'
alias dlog='docker logs -f --tail 500'
