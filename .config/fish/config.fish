
set -gx SHELL (which fish)
set -gx PATH $HOME/.cargo/bin $HOME/opt/bin $HOME/opt/kotlinc/bin $PATH

# fzf
set -gx FZF_DEFAULT_COMMAND "rg --files --no-ignore --hidden --follow --glob '!.git/*' --glob '!node_modules/*'"

# ABBREVIATIONS

## git
abbr g 'git'
abbr gst 'git status'
abbr gd 'git diff'
abbr gb 'git branch'
abbr gl 'git pull'
abbr gp 'git push'
abbr ga 'git add -u'
abbr gc 'git commit'
abbr gc! 'git commit --amend'
abbr gm 'git checkout master'
abbr gcb 'git checkout -b'
abbr gct 'git checkout'

## vim

. $HOME/.asdf/asdf.fish

. $HOME/.asdf/completions/asdf.fish
