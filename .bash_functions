remove_bak_files () {
    find . -type f -name '*.bak' -exec rm -i {} \;
}

find_string_dir () {
    grep -rnw . -e $1
#grep --exclude=*.tgz -rnw . -e $1
#grep --exclude-dir={node_modules,platforms} -rnw . -e $1
#grep -rwoh -e 'pattern' | wc -l - counts all ocurrances of the pattern
}

find_file () {
    find . -type f -iname $1
}

create_bash_script() {
    printf "#!/bin/bash\n\n\n" > $1 && chmod +x $1 && vim -c ":3j" -c "startinsert" $1
}
