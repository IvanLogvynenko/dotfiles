# History
HISTFILE=~/.local/share/zsh/.histfile
HISTSIZE=2000
SAVEHIST=2000
HISTDUP=eraze

setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

#UI
fastfetch

ZINIT_HOME=~/.local/share/zinit
if [ ! -d "$ZINIT_HOME" ]; then
	mkdir -p "$ZINIT_HOME"
	git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source ${ZINIT_HOME}/zinit.zsh

#zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

#Snippets
zinit snippet OMZP::sudo
zinit snippet OMZP::command-not-found
zinit snippet OMZP::copypath
zinit snippet OMZP::aws

#history substring search
zinit snippet OMZ::plugins/git/git.plugin.zsh

zinit load 'zsh-users/zsh-history-substring-search'
zinit ice wait atload'_history_substring_search_config'

autoload -U compinit && compinit

zinit cdreplay -q

bindkey '^f' autosuggest-accept
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down


zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"
eval "$(starship init zsh)"

#aliases

#own utils
PATH="$HOME/Dev/scripts/utils:$PATH"
