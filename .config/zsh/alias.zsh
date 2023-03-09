# all my aliases
alias xi='sudo xbps-install'
alias xiu='sudo xbps-install -Su'
alias xr='sudo xbps-remove'
alias xrr='sudo xbps-remove -R'
alias xq='xbps-query'
alias xqm='xbps-query -m'
alias xqs='xbps-query -l | fzf'
alias xro='sudo xbps-remove -O && sudo xbps-remove -o'
alias xbps='fuzzypkg'

alias l=ls
alias sl=ls
alias ls='exa --group-directories-first --icons'
alias ll='ls -lh --git'
alias la='ls -lah'
alias tree='ls -lh --git --tree'
alias cat=bat
alias grep='grep --color=auto'
alias clea=clear
alias wget='wget --no-check-certificate'
alias curl='curl --insecure'
alias psa='ps -aux | grep'
alias :q='exit' # For neovim terminal

alias vim=nvim
alias res='source ~/.zshrc'
alias g=lazygit
alias git-config-watt-toolkit='git config --global http.sslCAInfo /etc/ssl/certs/SteamTools.Certificate.cer'
alias gitc='git clone'
alias gitd='git difftool --no-symlinks --dir-diff'
alias screenkey='screenkey --no-systray -s small -p fixed -g 10%x5%+90%+2%'
alias bottles='flatpak run com.usebottles.bottles'
alias pip='python -m pip'
alias view="kitty +kitten icat"
alias neofetch='neofetch --kitty --crop_mode normal'
alias onefetch='onefetch --no-color-palette'
alias dbx=distrobox
alias devsh='distrobox enter -nw dev-server'
alias devrun='xhost +"local:podman@" && /home/xiaoshihou/.local/bin/distrobox-enter -n dev-server --'
