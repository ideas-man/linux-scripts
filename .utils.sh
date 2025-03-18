NGR="\033[0;32m"
BGR="\033[1;32m"
NPR="\033[0;35m"
BPR="\033[1;35m"
NC="\033[0m"

check_root ()
{
    if [ "$(id -u)" != "0" ]; then
        echo This script must be run under root. Terminating...
        exit 1
    fi
}

check_user ()
{
    if [ "$(id -u)" = "0" ]; then
        echo This script must be run under a non-priviledged user. Terminating...
        exit 1
    fi
}
