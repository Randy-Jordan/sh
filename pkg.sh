#!/usr/bin/env bash

set -Eeuo pipefail  # Enable strict error handling (exit on error, unset variable, or command failure)
trap cleanup SIGINT SIGTERM ERR EXIT  # Register cleanup function for various signals

script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd -P)  # Get the directory of the script

cleanup() {
  trap - SIGINT SIGTERM ERR EXIT  # Remove signal traps on cleanup
  # script cleanup actions here (e.g., removing temporary files)
}

setup_colors() {
  # Set color codes if output is to a terminal and no 'NO_COLOR' env var is set
  if [[ -t 2 ]] && [[ -z "${NO_COLOR-}" ]] && [[ "${TERM-}" != "dumb" ]]; then
    # Define color variables for output
    NOFORMAT='\033[0m' RED='\033[0;31m' GREEN='\033[0;32m' ORANGE='\033[0;33m' BLUE='\033[0;34m' PURPLE='\033[0;35m' CYAN='\033[0;36m' YELLOW='\033[1;33m'
  else
    # Set empty color codes if no terminal or NO_COLOR is set
    NOFORMAT='' RED='' GREEN='' ORANGE='' BLUE='' PURPLE='' CYAN='' YELLOW=''
  fi
}

msg() {
  echo >&2 -e "${1-}"  # Print the message to stderr, with color formatting if set
}

die() {
  local msg=$1  # The error message to display
  local code=${2-1}  # The exit code (default 1 if not provided)
  echo >&2 -e "${RED}$msg${NOFORMAT}"  # Print the error message
  exit "$code"  # Exit with the specified code
}

setup_colors  # Initialize color settings

# Execute your logic here (place the main script actions)
msg "${CYAN}Attempting installation of all packages... ${NOFORMAT}"

# Check if ran as root.
if [ "$EUID" -ne 0 ]; then
    die "This script must be run as root. Please use sudo." 1
fi

# Install packages from the list
while read -r p; do
  msg "\n${CYAN}Installing package: $p ${NOFORMAT}"  # Print which package is being installed
  sudo apt-get install -y "$p"  # Install the package
done << "EOF"
gpg
build-essential
coreutils
tmux
zsh
vim-gtk3
universal-ctags
fzf
git
wget
curl
EOF
