while read file
do
    source "$ZDOTDIR/$file.zsh"
done <<-EOF
theme
env
alias
util
opt
plugin
keybind
prompt
EOF
