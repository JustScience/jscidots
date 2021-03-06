# Bash Profile
[[ -s ~/.bashrc ]] && source ~/.bashrc

alias srcit="source ~/.bash_profile"
alias vimit="vim ~/.bash_profile"


# Exports
export EDITOR=sublime

export MY_HOME="~/"
alias home="cd ${MY_HOME}"

export RAILS_HOME="~/rails"
alias rls="cd ${RAILS_HOME}"

export ZUDO_HOME="~/rails/zudo"
alias zudo="cd ${ZUDO_HOME}"

export MKPD_HOME="~/rails/mkpd2"
alias mkpd="cd ${MKPD_HOME}"

export DOTS_HOME="~/.jscidots"
alias dots="cd ${DOTS_HOME}"


# Navigate
alias .='pwd'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'


# Inspect
alias ls='ls -GFh'
alias ll='ls -l'
alias la='ls -la'


# GIT
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit -m '
alias gd='git diff'
alias go='git checkout '
alias grb='git rebase '


# Rails
alias rdbm="rake db:migrate"


# Ruby
alias rbels="rbenv install --list"
alias rbeins="rbenv install "
alias rbevrs="vim ~/.rbenv/versions"
alias rbehm="cd /Users/jsci/.rbenv/versions/2.4.2/lib/ruby/gems; ls"


# PostGres
alias pgs="pg_ctl -D /usr/local/var/postgres start"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"


# MySQL
alias sqls="mysql.server start"
alias sqlstop="mysql.server stop"


# Sublime
alias sbl="${EDITOR} ."


# Prompt
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

function prompt {
  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  local RESETCOLOR="\[\e[00m\]"

  export PS1="\n$RED\u $PURPLE@ $GREEN\w $RESETCOLOR$GREENBOLD\$(git branch 2> /dev/null | grep '^*')\n $BLUE[\#] → $RESETCOLOR"
  export PS2=" | → $RESETCOLOR"
}

prompt


# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


# Hush
# cmp -s $HOME/.hushlogin /etc/motd
#   if [ $? != 0 ]; then
#     tee $HOME/.hushlogin < /etc/motd
#     echo -n "Press Enter to continue: " && read ans
#   fi