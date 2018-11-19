[[ -n $TOBLIB ]] && {
    echo .bashrc already sourced
    return
}
export TOBLIB=$(pwd)/.tob-lib
PATH=$(pwd)/bin:$PATH
command_not_found_handle () { exec tob "$@"; }
export -f command_not_found_handle

diff-u() { diff -u v/*psig-$1.cr1 v/*psig-$2.cr1; }
