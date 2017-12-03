# Make the prompt look badass
export PS1="\[\e[1;90m\]┌─ \[\e[1;94m\]\u\[\e[1;90m\] ── \[\e[1;94m\]\w\[\e[1;90m\] ─\n\[\e[1;90m\]└─▶\[\e[0m\] "


## ࿐ ꧁ ꧂ ꩜ 𐩕 𑁍  m༾ m༿ 

# Ultra-Search with FZF + RipGrep + bfs
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow -g "!{.git,node_modules}/*" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
bind -x '"\C-p": vim $(fzf);'

export FZF_ALT_C_COMMAND="cd ~/; bfs -type d -nohidden | sed s/^\./~/"  
