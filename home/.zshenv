export ZDOTDIR="$HOME/.config/zsh"

path=(
    $HOME/.local/bin(N-/)
    $path
)
export PATH

fpath=(
    $ZDOTDIR/completions(N-/)
    $fpath
)
export FPATH
