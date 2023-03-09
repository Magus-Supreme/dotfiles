# Zap plugin manager
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

# Setup programs
# zoxide
eval "$(zoxide init zsh)"
# Prompt
eval "$(starship init zsh)"
# Use distrobox programs
export PATH=$PATH:"$HOME/.local/share/distrobox-export"

# Plugins
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/completions"
plug "zsh-users/zsh-syntax-highlighting"
plug "zap-zsh/supercharge"
plug "hlissner/zsh-autopair"
plug "zap-zsh/fzf"
plug "ricffb/podman-zsh-completions"
plug "umop3plsdn/colored-man-pages"

# local setup
plug "/home/xiaoshihou/.config/zsh/alias.zsh"
plug "/home/xiaoshihou/.config/zsh/functions.zsh"
plug "/home/xiaoshihou/.config/zsh/vim.zsh"
