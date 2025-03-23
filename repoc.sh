#!/bin/bash

set -Eeuo pipefail
trap cleanup SIGINT SIGTERM ERR EXIT

script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd -P)

usage() {
  cat << EOF
Usage: $(basename "${BASH_SOURCE[0]}") <foldername>

Script to initialize a project folder with specific files and directories.

Available options:
<foldername>     The name of the folder to create and initialize

EOF
  exit
}

cleanup() {
  trap - SIGINT SIGTERM ERR EXIT
  # script cleanup here
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
  # Ensure exactly one argument is provided
  if [ $# -ne 1 ]; then
    usage
  fi

  foldername="$1"

  # Ensure the foldername is not empty
  if [ -z "${foldername-}" ]; then
    die "Missing required argument: foldername"
  fi
}

parse_params "$@"

# Create the specified folder
mkdir -p "$foldername"

# Copy the required files from Athena/code
cp ~/eg/c_dev/gitignore_c "$foldername/.gitignore"
cp ~/eg/README.md "$foldername/README.md"
cp ~/eg/c_dev/Makefile "$foldername/Makefile"
cp ~/eg/licenses/LICENSE_MIT.md "$foldername/LICENSE"

# Create src and tests subfolders
mkdir -p "$foldername/src"
mkdir -p "$foldername/tests"
mkdir -p "$foldername/include"

# Change directory to the created folder
cd "$foldername"

# Run ctags for C (not C++)
ctags -R --c-kinds=+p --fields=+iaS --extras=+q /usr/include

msg "Initialization and ctags generation complete for folder: $foldername"

