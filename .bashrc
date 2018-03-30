#!/bin/bash

# If not running interactively, don't do anything
#case $- in
#    *i*) ;;
#      *) return;;
#esac

# Advanced directory creation
function mkcd {
  if [ ! -n "$1" ]; then
    echo "Enter file name"
  elif [ -d $1 ]; then
    echo "\`$1' file exists"
  else
    mkdir $1 && cd $1
  fi
}

# Go back with ..
b() {
    str=""
    count=0
    while [ "$count" -lt "$1" ];
    do
        str=$str"../"
        let count=count+1
    done
    cd $str
}

# Color man pages
man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;31m") \
		LESS_TERMCAP_md=$(printf "\e[1;31m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;32m") \
			man "$@"
}

## Insert the current date with `notes date`. Store a note with `notes the earth is about 25k miles around` or `notes dentist appointment Thursday` or `notes purfunctory - carried out with a minimum of effort or reflection #vocab`. Look up recent notes with `notes` or read/search the entire notes database with `notes vim`.

  notes() {
  	local fpath=$HOME/notes.md
  	if [ "$1" == "gvim" ]; then
  		gvim + $fpath
  	elif [ "$1" == "vim" ]; then
  		gvim + $fpath
  	elif [ "$1" == "date" ]; then
  		echo '' >> $fpath
  		echo '# '`date +"%m-%d-%Y-%T"` >> $fpath
  		echo '---------------------' >> $fpath
  	elif [ "$1" == "" ]; then
  		less +G $fpath
  	else
  		echo '' >> $fpath
  	    echo $@ >> $fpath
  	fi
  }

alias rebash='. ~/.bashrc && clear'
export PS2='アーク '
# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion


# Prevent file overwrite on stdout redirection
# Use `>|` to force redirection to an existing file
set -o noclobber

# Update window size after every command
shopt -s checkwinsize

# Automatically trim long paths in the prompt (requires Bash 4.x)
PROMPT_DIRTRIM=2

# Enable history expansion with space
# E.g. typing !!<space> will replace the !! with your last command
bind Space:magic-space

# Turn on recursive globbing (enables ** to recurse all directories)
shopt -s globstar 2> /dev/null

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Save multi-line commands as one command
shopt -s cmdhist

# Avoid duplicate entries
HISTCONTROL="erasedups:ignoreboth"

# Don't record some commands
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear"

# Use standard ISO 8601 timestamp
# %F equivalent to %Y-%m-%d
# %T equivalent to %H:%M:%S (24-hours format)
HISTTIMEFORMAT='%F %T '

# Enable incremental history search with up/down arrows (also Readline goodness)
# Learn more about this here: http://codeinthehole.com/writing/the-most-important-command-line-tip-incremental-history-searching-with-inputrc/
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\e[C": forward-char'
bind '"\e[D": backward-char'
#
#unbind common <
#unbind common >
#unbind common p
#bind common > player-next
#bind common < player-prev
#bind common p player-pause

# Prepend cd to directory names automatically
shopt -s autocd 2> /dev/null
# Correct spelling errors during tab-completion
shopt -s dirspell 2> /dev/null
# Correct spelling errors in arguments supplied to cd
shopt -s cdspell 2> /dev/null

# This defines where cd looks for targets
# Add the directories you want to have fast access to, separated by colon
# Ex: CDPATH=".:~:~/projects" will look for targets in the current working directory, in home and in the ~/projects folder
CDPATH=".:~:~/.workspace"

# This allows you to bookmark your favorite places across the file system
# Define a variable containing a path and you will be able to cd into it regardless of the directory you're in
shopt -s cdable_vars

## PROGRESS BAR ##

#  source ./progress-bar.sh
# progress-bar 10

progress-bar() {
  local duration=${1}

  already_done() { for ((done=0; done<elapsed; done=done+1)); do printf "â–‡"; done }
  remaining() { for ((remain=elapsed; remain<duration; remain=remain+1)); do printf " "; done }
  percentage() { printf "| %s%%" $(( ((elapsed)*100)/(duration)*100/100 )); }
  clean_line() { printf "\r"; }

  for (( elapsed=1; elapsed<=duration; elapsed=elapsed+1 )); do
      already_done; remaining; percentage
      sleep 1
      clean_line
  done
  clean_line
}

# ls after a cd
function cd()
{
 builtin cd "$*" && ls
}

extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

## Ã Â¿Â ÃªÂ§Â ÃªÂ§â€š ÃªÂ©Å“ Ã°ÂÂ©â€¢ Ã°â€˜ÂÂ  mÃ Â¼Â¾ mÃ Â¼Â¿ 

# Ultra-Search with FZF + RipGrep + bfs
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow -g "!{.git,node_modules}/*" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
bind -x '"\C-p": vim $(fzf);'

export FZF_ALT_C_COMMAND="cd ~/; bfs -type d -nohidden | sed s/^\./~/"

# Status bar for DVTM
trap 'echo -ne "\033]0; ${PWD/$HOME/~} | $BASH_COMMAND\007"' DEBUG
function show_name(){ 
    if [[ -n "$BASH_COMMAND" ]]; 
    then 
        echo -en "\033]0; ${PWD/$HOME/~}\007";
    else 
        echo -en "\033]0; ${PWD/$HOME/~} | $BASH_COMMAND\007";
    fi 
}
export PROMPT_COMMAND='show_name'
