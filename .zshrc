function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

echo -e -n "\x1b[\x31 q"
DAY_OF_WEEK=$'%B%U%F{015}%D{%A}%f%u%b'
COMMA=$'%F{015},%f'
MONTH=$'%B%U%F{015}%D{%B}%f%u%b'
SLASH=$'%F{015}/%f'
DAY=$'%B%U%F{015}%D{%d}%f%u%b'
YEAR=$'%B%U%F{015}%D{%Y}%f%u%b'
DIR=$'%B%F{013}%~%f%b'
TIME=$'%F{015}%D{%l:%M%p}%f%'
setopt PROMPT_SUBST
export PROMPT='🥷  ${DIR} %F{010}$(parse_git_branch)%f 🐢'
RPROMPT='${DAY_OF_WEEK}${COMMA}${MONTH}${SLASH}${DAY}${SLASH}${YEAR}${TIME}'

# function parse_git_branch() {
#     git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
# }

# COLOR_DEF=$'\e[0m'
# COLOR_USR=$'\e[38;5;243m'
# COLOR_DIR=$'\e[38;5;197m'
# COLOR_GIT=$'\e[38;5;39m'
# setopt PROMPT_SUBST
# export PROMPT='${COLOR_USR}%n ${COLOR_DIR}%~ ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF} $ '