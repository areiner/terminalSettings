# setup colors for the CLI
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad

#Set up command history.
export HISTSIZE=100000
export HISTFILESIZE=100000

#Make shells write to history immediately instead of on exit.
shopt -s histappend
export PROMPT_COMMAND='history -a'

# custom command prompt that shows date time user host, file path, and git branch
if [ $TERM = 'dumb' ] ; then
  #no color :-(
  export PS1="\d \t \u@\h:\e\w\e\$(parse_git_branch)\n$"
else
  export PS1="\d \t \u@\h:\e[0;34m\w\e[m \$(parse_git_branch)\n$"
fi

# aliases for the ususal commands
alias mv='mv -vi'
alias rm='rm -v'
alias cd..='cd ..'

# aliases for ls
alias ls='ls -F'
alias ll='ls -lhF'
alias la='ls -AhF'
alias lla='ls -AlhF'
alias lt='ls -tlhF'

# GNU/Linux-specific settings
if [ $(uname) = 'Linux' ]; then . $HOME/.bash/bashrc.linux; fi

# GNU/Linux-specific settings
if [ $(uname) = 'Darwin' ]; then . $HOME/.bash/bashrc.darwin; fi

# function to identify and name branches for git
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(git::\1)/'
}
