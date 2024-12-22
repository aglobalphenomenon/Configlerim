# Lines configured by zsh-newuser-install

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=HISTSIZE
setopt autocd
unsetopt beep

# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

bindkey '^[OA' history-substring-search-up
bindkey '^[OB' history-substring-search-down

# Load Optionrc if it exists
[ -f "${ZDOTDIR}/optionrc" ] && source "${ZDOTDIR}/optionrc"

# Load Aliasrc if it exists
[ -f "${ZDOTDIR}/aliasrc" ] && source "${ZDOTDIR}/aliasrc"


# Enhance history with incremental search
bindkey '^R' history-incremental-search-backward

# Fuzzy search for history
source /usr/share/fzf/key-bindings.zsh

# Enable fuzzy file searching with fzf
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Plugins
source "${ZDOTDIR}/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh"

source "${ZDOTDIR}/plugins/zsh-history-substring-search/zsh-history-substring-search.plugin.zsh"

source "${ZDOTDIR}/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"

# Oh My Posh
export PATH=$PATH:$HOME/ohmyposh
export PATH=$PATH:$HOME/.local/bin
eval "$(oh-my-posh init zsh --config ~/.cache/oh-my-posh/themes/mj2.omp.json)"

# Zoxide
eval "$(zoxide init bash)"
eval "$(zoxide init zsh)"
function zz {
    z -
}
