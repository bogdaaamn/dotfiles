# change zsh prompt to show only the current folder
PROMPT='%B%F{22}%2~%f%b %# '

# git branch prompt https://git-scm.com/book/cs/v2/Appendix-A%3A-Git-in-Other-Environments-Git-in-Zsh#oh_my_zsh_git
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT='%F{yellow}$vcs_info_msg_0_%f'
zstyle ':vcs_info:git:*' formats '%b'
