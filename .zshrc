zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                             /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin

autoload run-help

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%b'

autoload -U colors && colors

setopt PROMPT_SUBST
PROMPT='%{$fg[cyan]%}nclerc%{$fg[red]%}:%{$fg[blue]%}%1~/ %{$fg[red]%}(%{$fg[magenta]%}${vcs_info_msg_0_}%{$fg[red]%})%{$fg[yellow]%}->%{$reset_color%} '
#PROMPT='%F{202}n%f%F{208}c%f%F{214}l%f%F{220}e%F{221}r%f%F{220}c%f%F{214}:%f%F{202}%1~/%f %F{220}(%f%F{208}{vcs_info_msg_0_}%f%F{220})%f%F{214}%#%f '

# Git config
git config --global core.editor micro
git config --global alias.slog "log --oneline"
git config --global alias.s "show --stat"
git config --global alias.ll "log --oneline -n 10"


source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh