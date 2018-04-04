alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias src='source ~/.bashrc'
alias free='free -mt'
alias ps='ps auxf'
alias home='cd ~/'
alias desk='cd ~/Desktop'
alias dl='cd ~/downloads'
#alias fm='thunar $PWD'
alias ytmp3="youtube-dl --extract-audio --audio-format mp3 --audio-quality 0 -o '%(title)s.%(ext)s'"
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ls='ls -hBG'
alias l.='ls -d .*'
alias fuck="sudo !!"
alias tree="tree -A"
alias treed="tree -d"
alias tree1="tree -d -L 1"
alias tree2="tree -d -L 2"
alias glg='git log --graph --pretty=format":%C(yellow)%h%Cblue%d%Creset %s %C(white) %an,%ar%Creset" --abbrev-commit --decorate'
alias glgh='git log --graph --pretty=format":%C(yellow)%h%Cblue%d%Creset %s %C(white) %an,%ar%Creset" --abbrev-commit --decorate | head'
alias glo='git log --oneline --decorate'
alias gloh='git log --oneline --decorate | head'
# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias path='echo $PATH | tr -s ":" "\n"'
alias mount='mount |column -t'

## View and set wallpaper with feh
alias feh-view="feh --scale-down --auto-zoom"
alias feh-set="feh --bg-fill"

alias ytmp3="youtube-dl --extract-audio --audio-format mp3"

alias sxiv='sxiv -b -q -s f 2>/dev/null'

alias irbr="irb -I . -r"

alias m='env TERM=xterm-256color micro'

# bundle (jekyll)
if [ -x /usr/bin/bundler ]; then
    alias bibu='bundle install --path vendor/bundle && bundle update'
    alias bu='bundle update'
    alias bejs='bundle exec jekyll serve'
    alias bejsdev='bundle exec jekyll serve --config _config.yml,_config-dev.yml'
fi

if [ -x /usr/bin/flatpak ]; then
    alias fuall="flatpak update"
    # alias fuall="flatpak update $(flatpak list)"
    alias fls="flatpak list"
    alias fif="flatpak install --from"
    alias fiu="flatpak uninstall"
    alias fiuall="flatpak uninstall $(flatpak list)"
fi

# youtube-dl
if [ -x /usr/bin/youtube-dl ]; then
    alias ytaud='youtube-dl -ci --extract-audio --audio-format mp3 -o "~/Music/Youtube/%(title)s.%(ext)s"'
    alias ytvid='youtube-dl --no-playlist --no-part --write-description --newline --prefer-free-formats -o "~/Videos/Youtube/%(title)s.%(ext)s" '
fi

if [ -x /usr/bin/apt ]; then
    alias auu="sudo apt update && sudo apt upgrade"
    alias aufu="sudo apt update && sudo apt full-upgrade"
    alias ai="sudo apt install"
    alias ar="sudo apt remove"
    alias as="sudo apt search"
    alias ash="sudo apt show"
    alias aac="sudo apt autoclean"
    alias aar="sudo apt autoremove"
    alias ama="sudo apt-mark auto"
    alias amm="sudo apt-mark manual"
fi


%% UBUNTU %%

alias apt5='sudo apt-get check && sudo apt-get update && sudo apt-get dist-upgrade && sudo apt-get autoremove --purge && sudo apt-get autoclean'

