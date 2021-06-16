export PS1="\[\e(B\e[m\]\[\e[1m\] ☯ 🐢  `date`, week `date +"%V"` \[\e[2m\]\[\e[4m\]\[\e[4#7m\]𝓜  𝔇 \[\e[24m\]\[\e[1m\]\[\033[0;31m\] 🌀 💯 \[\033[0;35m\]\w\[\e[1m\]\[\033[0;31m\] ⋙  \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ 🚬 \[\033[0;36m\]"

# reload bash profile
alias reload='source ~/.bash_profile'

#adds git branch to PS1
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# List all files colorized in long format
alias l="ls -lF ${colorflag}"

# List all files colorized in long format, including dot files
alias la="ls -Alhtr ${colorflag}"

# List only directories
alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"

# Always use color output for `ls`
alias ls="command ls ${colorflag}"