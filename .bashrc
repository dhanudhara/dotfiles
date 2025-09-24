# Aliases
alias ls='lsd -F'
alias la="lsd -a1"
alias lf="joshuto"
alias rm='rm -I'
alias vi='nvim'
alias nvi='neovide'
alias super-productivity='env -u WAYLAND_DISPLAY super-productivity'
alias brave='env -u WAYLAND_DISPLAY brave'
# alias cat='bat'
alias trackma='trackma-gtk'
alias feh='oculante'

source ~/.exports.sh

# Initialising starship
# eval "$(starship init bash)"
if [ -f "/home/dhanut/.config/fabric/fabric-bootstrap.inc" ]; then . "/home/dhanut/.config/fabric/fabric-bootstrap.inc"; fi

# Adding fzf keybindings and fuzzy completion
eval "$(fzf --bash)"

# Zoxide Init
# eval "$(zoxide init bash)"
