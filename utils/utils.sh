#!/bin/zsh

# ================================================
# Logger
# ================================================
log_error() {
    local ESC=$(printf '\033')
    printf "${ESC}[31m%s${ESC}[m\n" "$1"
}

log_warning() {
    local ESC=$(printf '\033')
    printf "${ESC}[33m%s${ESC}[m\n" "$1"
}

log_info() {
    local ESC=$(printf '\033')
    printf "${ESC}[34m%s${ESC}[m\n" "$1"
}

# ================================================
# Check OS
# ================================================
OS_MAC="OS_MAC"
OS_UBUNTU="OS_UBUNTU"

check_os() {
    if [[ "$OSTYPE" = "darwin"* ]]; then
        echo "$OS_MAC"
    elif [[ "$OSTYPE" = "linux-gnu"* ]]; then
        local DISTRIB=$(awk -F= '/^NAME/{print $2}' /etc/os-release)
        if [[ ${DISTRIB} = "Ubuntu"* ]]; then
            echo "$OS_UBUNTU"
        fi
    fi
}

# ================================================
# Command exists
# ================================================
command_exists () {
    type "$1" >/dev/null 2>&1
}
