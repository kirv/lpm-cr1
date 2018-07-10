export TOBLIB=$(pwd)/.tob-lib
PATH=$(pwd)/bin:$PATH
command_not_found_handle () { exec $(pwd)/tob "$@"; }
