# slipm functions/globals

BLUE='\e[1;34m'
YELLOW='\e[1;33m'
RED='\e[1;31m'
END='\e[0m'
INFO="[${BLUE}+${END}]"
LOG="[x]"
ERR="[${RED}!${END}]"

log() {
  echo "$(date +"%b %d %T") $@" >&2
}
