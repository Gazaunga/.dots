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
PATH=""
TERM="/home/$USER/bin/urxvtc"

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
