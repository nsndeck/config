if [ -f ~/.bash_functions ]; then 
    source ~/.bash_functions 
fi

if [ -f ~/.bash_aliases ]; then 
    source ~/.bash_aliases 
fi

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\[\033[32m\] \w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
