if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_vi_key_bindings
function fish_mode_prompt
end
function fish_greeting
end

function fish_prompt
    set_color   red --bold
    printf "["
    set_color   yellow
    printf "%s" "$USER"
    set_color   green
    printf "@"
    set_color   blue
    printf "%s" "$hostname"
    set_color   magenta
    printf "%s" " $PWD"
    set_color   red --bold
    printf "] "
    set_color normal
end

abbr p "sudo pacman"
abbr ka "killall"
abbr SS "sudo systemctl"
abbr g "git"
