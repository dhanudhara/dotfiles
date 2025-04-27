# Aliases
alias ls='lsd -F'
alias la="lsd -a1"
alias li="yazi"
alias rm='rm -I'
alias vi='nvim'
alias super-productivity='env -u WAYLAND_DISPLAY super-productivity'
alias brave='env -u WAYLAND_DISPLAY brave'
alias logseq='env -u WAYLAND_DISPLAY logseq'

source ~/.exports.sh

# Initialising starship
eval "$(starship init bash)"
if [ -f "/home/dhanut/.config/fabric/fabric-bootstrap.inc" ]; then . "/home/dhanut/.config/fabric/fabric-bootstrap.inc"; fi

# Adding fzf keybindings and fuzzy completion
eval "$(fzf --bash)"
