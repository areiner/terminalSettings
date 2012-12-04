# setup colors for the CLI
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad

#Set up command history.
export HISTSIZE=100000
export HISTFILESIZE=100000

#Make shells write to history immediately instead of on exit.
shopt -s histappend
export PROMPT_COMMAND='history -a'

# custom command prompt that shows date time user host and file path
export PS1="\d \t \u@\h:\e[0;34m\w\e[m\n$"

# aliases for ls
alias ll='ls -lh'
alias la='ls -alh'
alias du0='du -hd 0'
alias du1='du -hd 1'

#macOS trash instead of rm
function trash {
    for filename; do
        if [ -e $HOME/.Trash/$filename ]; then
            mv "${filename}" "${HOME}/.Trash/${filename}$(date +%Y%m%d%H%M%S)"
        else
            mv "${filename}" "${HOME}/.Trash"
        fi
    done
}
