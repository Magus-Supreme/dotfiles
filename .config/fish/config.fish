# My aliases
alias la='ls -lah'
alias ..='cd ..'
alias cp="cp -i"
alias mv='mv -i'
alias cls='clear'
#Void specific aliases
alias xi='sudo xbps-install'
alias xq='xbps-query'
alias xr='sudo xbps-remove'

# startup function
function fish_greeting
    pfetch
end

# fancy prompt
starship init fish | source

if status is-interactive
    # Commands to run in interactive sessions can go here
end
