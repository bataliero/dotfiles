set EDITOR vi

bind \ei nextd-or-forward-word                                  
bind \eo prevd-or-backward-word

# alt+shift+u:
bind -a \eu '..;commandline -f repaint'
bind -a \eU '..;commandline -f repaint'

bind \en history-token-search-forward 
bind \ep history-token-search-backward


set EDITOR vi
#bind \t complete


# Changing "ls" to "exa"
alias ls='exa -a --color=always --group-directories-first' 
alias ll='exa -l --color=always --group-directories-first' 
alias lt='exa -aT --color=always --group-directories-first'
alias l.='exa -a | egrep "^\."'


# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# FZF specific - https://github.com/junegunn/fzf#key-bindings-for-command-line
set -gx FZF_DEFAULT_COMMAND 'rg --files --hidden --follow --no-ignore-vcs'
set -gx FZF_DEFAULT_OPTS '--height 50% --layout=reverse --border'
set -gx FZF_CTRL_T_COMMAND $FZF_DEFAULT_COMMAND
set -gx FZF_ALT_C_COMMAND 'fd --type d . --color=never'
