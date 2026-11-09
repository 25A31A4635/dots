if status is-interactive
    # Commands to run in interactive sessions can go here
end

# package management
function i
    sudo pacman -S $argv
end

function r
    sudo pacman -Rns $argv
end

function pi
    paru -S $argv
end

function pr
    paru -Rns $argv
end

function upd
    sudo pacman -Syu $argv
end

function pupd
    paru -Syu $argv
end

function qs
    pacman -Qs $argv
end

function ss
    pacman -Ss $argv
end

function ps
    paru -Ssa $argv
end

# eza replacements (ls)
function ls
    eza --icons --group-directories-first $argv
end

function ll
    eza -l --icons --group-directories-first --git $argv
end

function la
    eza -la --icons --group-directories-first --git $argv
end

function lt
    eza --tree --level=2 --icons --group-directories-first $argv
end

function lta
    eza --tree --level=3 --icons --group-directories-first $argv
end

# extra eza replacements
function l
    eza -l --icons --group-directories-first $argv
end

function tree
    eza --tree --icons $argv
end

function treel
    eza --tree --level=2 --icons --group-directories-first $argv
end

# shortcuts
function y
    yazi $argv
end

function v
    nvim $argv
end

function hx
    helix $argv
end

# yt-dlp
function d
    command yt-dlp $argv
end

function dv
    command yt-dlp -f "bv*+ba/b" --merge-output-format "$argv[1]" $argv[2..-1]
end

function da
    command yt-dlp -x --audio-format "$argv[1]" $argv[2..-1]
end

# libsmbios
function 80charge
    sudo smbios-battery-ctl --set-custom-charge-interval 75 80
    and sudo smbios-battery-ctl --set-charging-mode=custom
end

function 100charge
    sudo smbios-battery-ctl --set-charging-mode=express
end

zoxide init fish | source
