# =========================================================
# fzf
# =========================================================

# Default search command
export FZF_DEFAULT_COMMAND='fd --type f --hidden --strip-cwd-prefix'

# Ctrl+T uses fd
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Preview command
export _FZF_PREVIEW_CMD='bat --style=plain,numbers --color=always --line-range=:500 {}'

# Global UI
export FZF_DEFAULT_OPTS="
--height=60%
--layout=reverse
--border=rounded
--preview '$_FZF_PREVIEW_CMD'
"

# Ctrl+T preview
export FZF_CTRL_T_OPTS="
--preview '$_FZF_PREVIEW_CMD'
"

# =========================================================
# Ctrl+F (Files without hidden files)
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
