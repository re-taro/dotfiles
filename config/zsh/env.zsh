export GPG_TTY="${TTY:-$(tty)}"

export FZF_DEFAULT_OPTS="
  --color fg:$color7
  --color fg+:$color0
  --color bg:$background
  --color bg+:$color0
  --color hl:$color10
  --color hl+:$color2
  --color info:$color4
  --color prompt:$color4
  --color spinner:$color12
  --color pointer:$color7
  --color marker:$color5
  --color border:$background
  --color gutter:$color0
  --color header:$color8
  --prompt ' '
  --pointer ' λ'
  --layout=reverse
  --border horizontal
  --height 40"
