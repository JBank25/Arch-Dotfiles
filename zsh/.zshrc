bindkey -v
autoload -U colors && colors
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats ' (%b)'
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[magenta]%}%~%{$fg[red]%}]%{$fg[cyan]%}${vcs_info_msg_0_}%{$reset_color%}
$%b "

# Needed to preserve history, not done by default
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory


# Misc fzf things
# pacman -S fzf
source <(fzf --zsh)
export FZF_CTRL_R_OPTS="
--bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'
--color header:italic
--header 'Press CTRL-Y to copy command into clipboard'"

# for taskfiles
alias task='go-task'
eval "$(go-task --completion zsh)"

# No plugin manager needed for this, just use pacckage manager
# or clone git repo and add the line below or some variation
# of it
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
