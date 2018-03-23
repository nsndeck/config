if [ -f ~/.bash_profile ]; then 
    source ~/.bash_profile
fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
