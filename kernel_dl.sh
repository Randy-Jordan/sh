#!/usr/bin/env bash

set -Eeuo pipefail
trap cleanup SIGINT SIGTERM ERR EXIT

script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd -P)

usage() {
    cat << EOF # remove the space between << and EOF, this is due to web plugin issue
Usage: $(basename "${BASH_SOURCE[0]}") [-h] [-v] arg1_kernel_version

Script to download and compile kernel. First argument is the kernel version requested.

Available options:

-h, --help      Print this help and exit
-v, --verbose   Print script debug info
EOF
exit
}

cleanup() {
    trap - SIGINT SIGTERM ERR EXIT
    # script cleanup here
}

setup_colors() {
    if [[ -t 2 ]] && [[ -z "${NO_COLOR-}" ]] && [[ "${TERM-}" != "dumb" ]]; then
        NOFORMAT='\033[0m' RED='\033[0;31m' GREEN='\033[0;32m' ORANGE='\033[0;33m' BLUE='\033[0;34m' PURPLE='\033[0;35m' CYAN='\033[0;36m' YELLOW='\033[1;33m'
    else
        NOFORMAT='' RED='' GREEN='' ORANGE='' BLUE='' PURPLE='' CYAN='' YELLOW=''
    fi
}

msg() {
    echo >&2 -e "${1-}"
}

die() {
    local msg=$1
    local code=${2-1} # default exit status 1
    msg "\033[0;31m$msg\033[0m"
    exit "$code"
}

download_kernel(){
    local VERSION=$1
    local KERNEL_MAJOR=$(echo $KERNEL_VERSION | sed 's/\([0-9]*\)[^0-9].*/\1/')
    local URL="https://www.kernel.org/pub/linux/kernel/v${KERNEL_MAJOR}.x/linux-${KERNEL_VERSION}.tar.xz"
    # Download the file using wget
    if ! wget -q "${URL}"; then
        die "Failed to download file:${URL}\n"
    fi
    
    msg "${GREEN} ${KERNEL_VERSION} Download Success.\n${NOFORMAT}"
    return 0;
}

untar_kernel(){
    local VERSION=$1
    msg "${CYAN} Attempting to extract linux-${VERSION}...${NOFORMAT}\n"
    # Extract the tar file
    if ! tar -xf "linux-${VERSION}.tar.xz"; then
        die "Failed to extract file: ${VERSION}"
    fi

    msg "${GREEN} ${KERNEL_VERSION} Unpack Success.\n${NOFORMAT}"
    return 0
}

make_kernel(){
  local VERSION=$1
  msg "${CYAN} Attempting to build kernel ${VERSION}... ${NOFORMAT}\n"
  # Change directory to ./linux
  if ! cd "./linux-${VERSION}"; then
    die "Failed to change directory to ${VERSION}\n"
  fi

  # Run make defconfig
  if ! make defconfig; then
    die "make defconfig failed"
  fi

  # Build the bzImage
  if ! make -j$(nproc) bzImage; then
    die "make bzImage failed"
  fi

  # Change back to the previous directory
  if ! cd ..; then
    die "Failed to return to the previous directory"
  fi
  
  msg "${GREEN} ${KERNEL_VERSION} Build Success.\n${NOFORMAT}"
  return 0
}

parse_params() {
    # default values of variables set from params

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

    args=("$@")
    # Check if there is exactly one argument
    if [[ ${#args[@]} -ne 1 ]]; then
        usage
        return 1
    fi
    # Params successfully parsed. 
    return 0
}

parse_params "$@"
setup_colors

# script logic here

KERNEL_VERSION=${args[0]}

msg "${CYAN} Attempting to download ${KERNEL_VERSION}...${NOFORMAT}"
download_kernel ${KERNEL_VERSION}
untar_kernel ${KERNEL_VERSION}
make_kernel ${KERNEL_VERSION}
