function set_colors
{
	GREEN='\033[1;32m'
	RED='\033[1;31m'
	BLUE='\033[1m\033[34m'
	NOCOLOR='\033[0m'
}

function error
{
	echo "${RED}$1${NOCOLOR}"; exit 1;
}
