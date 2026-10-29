if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias i "sudo pacman -S"
alias r "sudo pacman -Rns"
alias pi "paru -S"
alias pr "paru -Rns"
alias upd "sudo pacman -Syu"
alias pupd "paru -Syu"
alias qs "pacman -Qs"
alias ss "pacman -Ss"
alias as "paru -Ssa"

alias y yazi
alias v nvim

function d
    command yt-dlp $argv
end

function dv
    command yt-dlp -f "bv*+ba/b" --merge-output-format "$argv[1]" $argv[2..-1]
end

function da
    command yt-dlp -x --audio-format "$argv[1]" $argv[2..-1]
end

function 80%
    sudo smbios-battery-ctl --set-custom-charge-interval 75 80
    and sudo smbios-battery-ctl --set-charging-mode=custom
end

function 100%
    sudo smbios-battery-ctl --set-charging-mode=express
end

zoxide init fish | source
