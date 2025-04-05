# define XDG paths
set -q XDG_CONFIG_HOME || set -gx XDG_CONFIG_HOME $HOME/.config
set -q XDG_DATA_HOME || set -gx XDG_DATA_HOME $HOME/.local/share

# define fish config paths
set -g FISH_CONFIG_DIR $XDG_CONFIG_HOME/fish
set -g FISH_CONFIG $FISH_CONFIG_DIR/config.fish
set -g FISH_CACHE_DIR $HOME/.cache/fish

set -gx theme_nerd_fonts yes
set -gx BIT_THEME monochrome

# setting alias
abbr -a clone 'ghr clone'
abbr -a clone-ssh 'ghr clone git@github.com:'
abbr -a lg 'lazygit'
abbr -a ld 'lazydocker'
abbr -a c 'code'
abbr -a v 'nvim'

abbr -a ls 'eza'
abbr -a l 'eza -abghHliS'
abbr -a cat 'bat'
abbr -a find 'fd'

# setting path
set -x PATH "$DENO_INSTALL/bin:$PATH"
set -x PATH "$HOME/.deno/bin:$PATH"
set -x PATH "$PATH:/usr/local/bin"

# setting environment variables
set -x SSH_AUTH_SOCK "$(/opt/homebrew/bin/gpgconf --list-dirs agent-ssh-socket)"
set -x GPG_TTY "$(tty)"
set -x DENO_INSTALL "$HOME/.deno"
set -x GHR_ROOT "$HOME/projects"
set -x STARSHIP_CONFIG "$HOME/.config/starship/starship.toml"
set -U fish_user_paths $fish_user_paths $HOME/.cargo/bin

eval "$(/opt/homebrew/bin/brew shellenv)"
starship init fish | source
mise activate fish | source
ghr shell fish | source
fzf --fish | source
zoxide init fish | source
atuin init fish | source

gpg-connect-agent killagent /bye
gpg-connect-agent updatestartuptty /bye
gpg-connect-agent /bye
