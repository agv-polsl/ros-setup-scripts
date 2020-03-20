function set_colors
{
	export GREEN='\033[1;32m'
	export RED='\033[1;31m'
	export BLUE='\033[1m\033[34m'
	export NOCOLOR='\033[0m'
}

function error
{
	echo -e "${RED}$1${NOCOLOR}"; exit 1;
}
