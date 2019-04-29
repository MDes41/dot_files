export PATH="/usr/local/bin:$PATH:$HOME/npm-global/bin:$HOME/geckodriver:/usr/local/Cellar/qt5/5.8.0_1/bin"

export NODE_PATH="/Users/mdesmarteau/npm-global/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PS1="\[\e(B\e[m\]\[\e[1m\] ☯ 🐢  \[\e[2m\]\[\e[4m\]\[\e[4#7m\]𝓜 𝓐 𝓣 𝓣 𝔇 \[\e[24m\]\[\e[1m\]\[\033[0;31m\] ⪼  \[\033[0;35m\]\w\[\e[1m\]\[\033[0;31m\] ⋙  ⤖ \[\033[0;36m\]"

# \[\033[1;33m\]\$(parse_git_branch)\[\e[1m\]\[\033[0;31m\]

# \[\e[2m\]\[\e[4m\]\[\e[4#7m\]𝓜 𝓐 𝓣 𝓣 𝔇 \[\e[24m\]\[\e[1m\]\[\033[0;31m\]
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
# export LSCOLORS=exfxcxdxbxegedabagacad

# List all files colorized in long format
alias l="ls -lF ${colorflag}"

alias bash='subl ~/.bash_profile'

# List all files colorized in long format, including dot files
alias la="ls -Alhtr ${colorflag}"

# List only directories
alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"

# Always use color output for `ls`
alias ls="command ls ${colorflag}"

alias wrapon='tput rmam'
alias wrapoff='tput smam' 


# Recursively remove .DS_Store files
alias cleanupds="find . -type f -name '*.DS_Store' -ls -delete"

#git alias
alias gaa="git add ."
alias ga="git add"
alias gc="git commit -m"
alias gpom="git push origin master"
alias gpo="git push origin"
alias hb="hub browse"
alias gckn="git checkout -b"
alias gck="git checkout"
alias gs="git status"



#alias for forder nav
alias cd4="cd ~/Turing/mod4 && la"
alias cdp="cd ~/Turing/mod4/projects && la"
alias cde="cd ~/Turing/mod4/class_exercises && la"
alias cdqs="cd ~/Turing/mod4/projects/quantified-self && la"
alias ..='cd ..'
alias home="cd ~"

#current projects
alias cdsb="cd ~/Turing/rp3mod/projects/stuff_box"

#open web pages
alias goo='open https://www.google.com'

#alias to open apps
alias spot='open -a -j --hide Spotify.app'
alias slack='open -a Slack.app'

#alias open in sublime
alias s2a='sublime .'
alias s2='sublime '
alias s3a='subl .'
alias s3='subl '

alias reload='source ~/.bash_profile'

#different git log formats
alias gl="git log --format=format:\"%C(auto)%h %C(green)%cD %C(blue)%aN%Creset %s\""
alias gl2="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gl3='git log --graph --abbrev-commit --decorate --date=relative --format=format:"%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold  yellow)%d%C(reset)" --all'


#show or hide hidden files when using ls
alias showdotfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hidedotfiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'


alias conn='lsof -i'
alias eeconn='lsof -i | grep -E "(ESTABLISHED)"'
alias lconn='lsof -i | grep -E "(LISTEN)"'
alias cconn='lsof -i | grep -E "(CLOSED)"'
alias www='grep www /etc/services'

alias bz='cd ~/Turing/side_projects/BelowZeroCryotherapy'

alias pl='port installed'

#check the network mac adress
alias macaddr='ifconfig en0 | grep ether'

# command to see if bluetooth is down
alias bts='ifconfig awdl0 | awk "/status/{print $2}"'
alias wfs='ifconfig en0 | awk "/status/{print $2}"'
alias wfd='sudo ifconfig en0 down'
alias wfu='sudo ifconfig en0 up'
alias btd='sudo ifconfig awdl0 down'
alias btu='sudo ifconfig awdl0 up'

alias bz='cd ~/Turing/side_projects/BelowZeroCryotherapy'


#view terminal history
alias hist='history'
#delete terminal history
alias dhist='history -c'


#List download history
dh() { sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'select * from LSQuarantineEvent' | php -r 'date_default_timezone_set("America/Montreal"); foreach (explode("\n", file_get_contents("php://stdin")) as $l) { preg_match("/([0-9\\.]+)\\|(.*)\$/", $l, $re); echo date("Y-m-d H:i:s",strtotime("2000-01-01 19:00")+$re[1])."\t$re[2]\n"; }'; }
#Delete download history
deletedh() { sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'; }


# command to change mac address
macnew() { sudo ifconfig en0 ether '$@'; }
# command to make it up down us 'up' or 'down'
bt() { sudo ifconfig awdl0 '$@'; } #not working

pi() { port info '$@'; }

p() { lsof -i :"$@";}

parse_git_branch() {
   
   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}


source /usr/local/etc/bash_completion.d/git-completion.bash

# function ip {
#     myip=$(curl -s checkip.dyndns.org | grep -Eo '[0-9\.]+')
#     echo -e "$(ips | sed -e :a -e '$!N;s/\n/${IP_SEPARATOR}/;ta' | sed -e 's/127\.0\.0\.1\${IP_SEPARATOR}//g'), ${myip}"
# }


##
# Your previous /Users/mdcomputer/.bash_profile file was backed up as /Users/mdcomputer/.bash_profile.macports-saved_2017-04-29_at_23:29:37
##

# MacPorts Installer addition on 2017-04-29_at_23:29:37: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.



function dl {
	arg=`echo $1 | sed s,https://,http://,g`
	echo $arg
	TMPFILE=`mktemp`
	curl $arg > $TMPFILE
	mkdir $TMPDIR/mount
	yes | hdiutil attach -noverify -nobrowse -mountpoint $TMPDIR/mount $TMPFILE
	cp -r $TMPDIR/mount/*.app /Applications
	hdiutil detach $TMPDIR/mount
	rm -r $TMPDIR/mount
	rm -r $TMPFILE
}

function salt {
	ln -s "/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
} 

function homebrew {
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}
#install homebrew (homebrew)
#install sublime (dl <link>)
#install sublime command line tools (salt)
#install git (brew install git)
#install git hub(brew install hub)
#install cli tools (sh -c "$(curl -fsSL https://raw.githubusercontent.com/guarinogabriel/mac-cli/master/mac-cli/tools/install)")


#list all users
#cat /etc/passwd

