
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '


# Manual plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh           # Provides command suggestions
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh   # Commands are highlighted
setopt PROMPT_SUBST

PROMPT='┌─[%F{green}%~%f] %F{red}${vcs_info_msg_0_}%f$
└─▶ '

RPROMPT='%F{blue}%*%f'


alias ll="ls -la"


