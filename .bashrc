if [ -f ~/.bash_profile ]; then 
    source ~/.bash_profile
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/nedyalkonikolov/.sdkman"
[[ -s "/home/nedyalkonikolov/.sdkman/bin/sdkman-init.sh" ]] && source "/home/nedyalkonikolov/.sdkman/bin/sdkman-init.sh"
