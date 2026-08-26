# shell integrations
starship init fish | source
zoxide init fish | source
# fzf --fish | source


# aliases
# alias pmi "doas pacman -S"
# alias pmu "doas pacman -Syu"
# alias pmr "doas pacman -R"
alias hs "history | rg"
alias n "NVIM_APPNAME=nvim3 nvim"
alias dn "doas nvim"
alias ff "fastfetch"
alias c "clear"


# envs
set -gx LC_ALL "en_US.UTF-8"
set -gx LANG "en_US.UTF-8"
set -g fish_greeting


if status is-interactive
  alias d "doas"
  alias cd "z"
  alias ls "eza --color --icons --group-directories-first --no-quotes"
  alias ll "eza -la --group-directories-first --color --icons --git --no-filesize --time-style \"+%d %b %Y\" --no-quotes"
  alias cat "bat --theme Catppuccin\ Mocha"
end
