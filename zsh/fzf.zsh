# =========================================================
# fzf
# =========================================================

# Carregar os scripts padrão do FZF (completions e key-bindings)
if [ -f /usr/share/fzf/key-bindings.zsh ]; then
  source /usr/share/fzf/key-bindings.zsh
fi
if [ -f /usr/share/fzf/completion.zsh ]; then
  source /usr/share/fzf/completion.zsh
fi

# Default search command
export FZF_DEFAULT_COMMAND='fd --type f --hidden --strip-cwd-prefix'

# Ctrl+T uses fd
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Preview command
export _FZF_PREVIEW_CMD='bat --style=plain,numbers --color=always --line-range=:500 {}'

# Global UI (fundo transparente, cores do seu tema)
export FZF_DEFAULT_OPTS="
--height=60%
--layout=reverse
--border=rounded
--preview '$_FZF_PREVIEW_CMD'
--color=fg:#e6829e,hl:#ce7688,fg+:#804654,hl+:#ce7688,info:#61333e,prompt:#e6829e,pointer:#e6829e,marker:#ce7688,spinner:#ce7688,header:#965363
"

# Ctrl+T preview
export FZF_CTRL_T_OPTS="
--preview '$_FZF_PREVIEW_CMD'
"

# =========================================================
# Ctrl+F (Files without hidden files) - função personalizada
# =========================================================

_fzf_file_no_hidden() {
    local cmd result

    cmd="fd --type f --strip-cwd-prefix"

    result=$(
        eval "$cmd" |
        fzf --preview "$_FZF_PREVIEW_CMD"
    ) || return

    LBUFFER+="$result"
    zle reset-prompt
}

zle -N _fzf_file_no_hidden
bindkey '^F' _fzf_file_no_hidden
