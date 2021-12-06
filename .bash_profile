if [ -f ~/.bash_functions ]; then 
    source ~/.bash_functions 
fi

if [ -f ~/.bash_aliases ]; then 
    source ~/.bash_aliases 
fi

if [ -f ~/.bash_variables ]; then 
    source ~/.bash_variables 
fi

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\[\033[32m\] \w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/nedyalkonikolov/.sdkman"
[[ -s "/Users/nedyalkonikolov/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/nedyalkonikolov/.sdkman/bin/sdkman-init.sh"

export PATH="$HOME/.cargo/bin:$PATH"
