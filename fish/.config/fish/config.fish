set -Ux XDG_CONFIG_HOME $HOME/.config
set -U fish_prompt_pwd_dir_length 0

fish_vi_key_bindings

setxkbmap -option ctrl:nocaps
xcape 

set -gx PATH ~/Scripts $PATH

function fish_greeting
end

source ~/.cargo/env
