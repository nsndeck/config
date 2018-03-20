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
    if [ $# -ne 1 ]; then
        echo "Illegal number of arguments. This function requires a filename."
        return 1
    fi
    if [ -e $1 ]
    then
        echo "file with name " $1 " already exists"
        return 1
    fi
    printf "#!/bin/bash\n\n\n" > $1 && chmod +x $1 && vim -c ":3j" -c "startinsert" $1
}

create_dockerfile() {
    dockerfileName=$1
    if [ -z $dockerfileName ]
    then
        dockerfileName="Dockerfile"
    fi
    if [ -e $dockerfileName ]
    then
        echo "file with name " $dockerfileName " already exists"
        return 1
    fi
    printf "# vim:set ft=dockerfile:\n\n\n" > $dockerfileName && vim -c ":3j" -c "startinsert" $dockerfileName
}
