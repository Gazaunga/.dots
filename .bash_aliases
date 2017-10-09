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

alias mount='mount |column -t'
