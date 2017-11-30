# ------------------------------------------------------------------------------
#          FILE:  windows.zsh-theme
#   DESCRIPTION:  oh-my-zsh theme file to emulate Windows cmd
#        AUTHOR:  Julia Vallina (soyjulis@gmail.com)
#       VERSION:  1.0.0
#    SCREENSHOT:  screenshot.gif
# ------------------------------------------------------------------------------

setopt PROMPT_SUBST
PROMPT='C:%{${${${(%):-%~}//\//\\}/\~/\\\$HOME}%${#${${(%):-%~}//\//\\}/\~/\\\$HOME}G%}> '

export EDITOR="vim"
export VISUAL="vim"
export BROWSER="waterfox"
export RANGER_LOAD_DEFAULT_RC=FALSE
export LANG=en_US.UTF-8

# home and key to work
bindkey '\e[1~' beginning-of-line
bindkey '\e[4~' end-of-line
export KEYTIMEOUT=1
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^r' history-incremental-search-backward
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

zstyle ":completion:*" rehash true
setopt COMPLETE_ALIASES

alias ls='ls -a'
#alias ls="colorls -r"
alias ll='ls --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias la='ls -lha --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias rm='rm -I'
alias mkdir='mkdir -p -v'
alias sxiv='sxiv -b'
alias :q='exit'
alias :x='exit'

if which ruby >/dev/null && which gem >/dev/null; then
    PATH="$(ruby -rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi
