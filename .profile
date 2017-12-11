LANG="en_US.UTF-8"

EDITOR=micro
ALTEDITOR=nvim
PAGER=less
BROWSER=firefox
WBROWSER=qutebrowser
MANWIDTH=80
LESS='-F -g -i -M -R -S -w -X -z-4'
GOROOT="$HOME/bin"
GOPATH="$HOME/.go"
SUDO_PROMPT="[sudo] auth $(tput bold)$(tput setaf 1)%U$(tput sgr0) "
PATH="$PATH:$HOME/bin:$(ruby -rubygems -e "puts Gem.user_dir)/bin"
TERM="/home/$USER/bin/urxvtc"
CC=/usr/bin/clang
CXX=/usr/bin/clang++

# download folder is on ramdisk
test -d "$HOME/tmp/downloads" || mkdir "$HOME/tmp/downloads"

# cyber by tudurom

if [ "$TERM" = "linux" ]; then
    echo -en "\e]P00e1f22"
    echo -en "\e]P1a85659"
    echo -en "\e]P2668e8c"
    echo -en "\e]P3c3b6a4"
    echo -en "\e]P4326d78"
    echo -en "\e]P5433c32"
    echo -en "\e]P6386e74"
    echo -en "\e]P7e0f2ec"
    echo -en "\e]P81c4b4e"
    echo -en "\e]P9eb8995"
    echo -en "\e]PA82aea9"
    echo -en "\e]PBe1d9ce"
    echo -en "\e]PCa7d2cd"
    echo -en "\e]PDaa9576"
    echo -en "\e]PE90c0bd"
    echo -en "\e]PFf0f8f3"
fi

clear

# vim: set ft=sh :

## Todo Setup ##

# Notes
NOTES_BASE_PATH=""
[ -d "$HOME/Documents/notes" ] && NOTES_BASE_PATH="$HOME/Documents/notes"
[ -d "$HOME/docs/notes" ]      && NOTES_BASE_PATH="$HOME/docs/notes"

if [ -n "NOTES_BASE_PATH" ]
then
  alias todo="(cd $NOTES_BASE_PATH; $EDITOR todo.txt)"
  alias lstodo="rg --no-line-number ' *(\[.\].*\*)$' $NOTES_BASE_PATH/notes/todo.txt --replace '\$1' | sort"
  
  # Daily journal
  function journal() {
    today=$(date +"%m-%d-%y")
    [ ! -f $file ] && echo "# $today" > $file
    (cd $NOTES_BASE_PATH; $EDITOR "journal/$today.txt")
  }
fi
