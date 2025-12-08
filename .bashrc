# Aliases
alias ls='ls --color'
# alias la="lsd -a1"
alias yz="yazi"
alias suspend='systemctl suspend'
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
eval "$(starship init bash)"

# Adding fzf keybindings and fuzzy completion
eval "$(fzf --bash)"
