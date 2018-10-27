[[ -n $TOBLIB ]] && {
    echo .bashrc already sourced
    return
}
export TOBLIB=$(pwd)/.tob-lib
PATH=$(pwd)/bin:$PATH
export command_not_found_handle () { exec tob "$@"; }
