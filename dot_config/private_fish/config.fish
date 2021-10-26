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



