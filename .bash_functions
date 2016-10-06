remove_bak_files () {
    find . -type f -name '*.bak' -exec rm -i {} \;
}

find_string_dir () {
    grep -rnw . -e $1
#grep --exclude=*.tgz -rnw . -e $1
#grep --exclude-dir={node_modules,platforms} -rnw . -e $1
}
