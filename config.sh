#!/usr/bin/env bash

set -Eeuo pipefail
trap cleanup SIGINT SIGTERM ERR EXIT

script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd -P)

usage() {
  cat << EOF
Usage: $(basename "${BASH_SOURCE[0]}") [-h] [-v]

This script clones a bare Git repository for dotfiles, checks out files,
and backs up any pre-existing files that may conflict.

Available options:

-h, --help      Print this help and exit
-v, --verbose   Print script debug info
EOF
  exit
}

cleanup() {
  trap - SIGINT SIGTERM ERR EXIT
  # cleanup code here, if needed
}

setup_colors() {
  if [[ -t 2 ]] && [[ -z "${NO_COLOR-}" ]] && [[ "${TERM-}" != "dumb" ]]; then
    NOFORMAT='\033[0m' RED='\033[0;31m' GREEN='\033[0;32m' YELLOW='\033[1;33m'
  else
    NOFORMAT='' RED='' GREEN='' YELLOW=''
  fi
}

msg() {
  echo >&2 -e "${1-}"
}

die() {
  local msg=$1
  local code=${2-1} # default exit status 1
  msg "$msg"
  exit "$code"
}

parse_params() {
  while :; do
    case "${1-}" in
    -h | --help) usage ;;
    -v | --verbose) set -x ;;
    --no-color) NO_COLOR=1 ;;
    -?*) die "Unknown option: $1" ;;
    *) break ;;
    esac
    shift
  done
}

parse_params "$@"
setup_colors

# script logic here
msg "${YELLOW}Cloning dotfiles repository...${NOFORMAT}"

git clone --bare https://myrepos.dev/Randy-Jordan/dot.git "$HOME/.dot" || die "Failed to clone repository."

config() {
  /usr/bin/git --git-dir="$HOME/.dot/" --work-tree="$HOME" "$@"
}

mkdir -p "$HOME/.config-backup"

if config checkout; then
  msg "${GREEN}Checked out config.${NOFORMAT}"
else
  msg "${YELLOW}Backing up pre-existing dot files...${NOFORMAT}"
  config checkout 2>&1 | grep -E "\s+\." | awk '{print $1}' | xargs -I{} mv {} "$HOME/.config-backup/{}"
  config checkout
fi

config config status.showUntrackedFiles no
msg "${GREEN}Dotfiles setup complete.${NOFORMAT}"
