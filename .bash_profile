alias g=git
alias tra="tns run android"
alias tda="tns debug android"
alias tta="tns test android"
alias tla="tns livesync android"
alias tlat="tns livesync android --path tests"
alias trat="tns run android --path tests"
alias ll="ls -al"
alias gs="git status"

###-tns-completion-start-###
if [ -f C:/Users/nnikolov/.tnsrc ]; then 
    source C:/Users/nnikolov/.tnsrc 
fi
###-tns-completion-end-###
if [ -f ~/.bash_functions ]; then 
    source ~/.bash_functions 
fi
