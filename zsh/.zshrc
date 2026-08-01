# =========================================================
# Definir ZDOTDIR (caso não esteja definido)
# =========================================================
export ZDOTDIR="${ZDOTDIR:-$HOME/.config/zsh}"

# =========================================================
# FORÇAR MODO EMACS (desativa o modo vi)
# =========================================================
bindkey -e

# =========================================================
# Instant prompt do Powerlevel10k
# =========================================================
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# =========================================================
# History
# =========================================================
HISTFILE="$XDG_STATE_HOME/zsh/history"
HISTSIZE=100000
SAVEHIST=100000

setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS

# =========================================================
# Shell behaviour
# =========================================================
setopt AUTOCD
setopt NOBEEP
setopt NUMERIC_GLOB_SORT

# =========================================================
# Zoxide
# =========================================================
eval "$(zoxide init zsh)"

# =========================================================
# Completion
# =========================================================
autoload -Uz compinit
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump"
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# =========================================================
# FZF key-bindings (se estiver instalado)
# =========================================================
if [[ -f /usr/share/fzf/key-bindings.zsh ]]; then
  source /usr/share/fzf/key-bindings.zsh
  source /usr/share/fzf/completion.zsh
fi

# =========================================================
# Carregar módulos personalizados
# =========================================================
source "$ZDOTDIR/fzf.zsh"
source "$ZDOTDIR/aliases.zsh"
source "$ZDOTDIR/bindings.zsh"
source "$ZDOTDIR/plugins.zsh"
source "$ZDOTDIR/prompt.zsh"

# =========================================================
# Powerlevel10k personalizado
# =========================================================
[[ ! -f "$ZDOTDIR/.p10k.zsh" ]] || source "$ZDOTDIR/.p10k.zsh"

# =========================================================
# Fastfetch (apenas em sessões interativas)
# =========================================================
fastfetch
