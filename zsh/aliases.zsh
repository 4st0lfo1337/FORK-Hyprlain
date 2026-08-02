# =========================================================
# Keybindings (modo Emacs)
# =========================================================

# Garantir que estamos no modo Emacs (redundante, mas seguro)
bindkey -e

# -----------------------------
# Emacs-style line editing
# -----------------------------
bindkey '^A' beginning-of-line
bindkey '^E' end-of-line

bindkey '^B' backward-char
bindkey '^F' forward-char

bindkey '^W' backward-kill-word
bindkey '^U' backward-kill-line
bindkey '^K' kill-line
bindkey '^Y' yank

bindkey '^Z' undo

# -----------------------------
# Ctrl + Arrow (word jumping)
# -----------------------------
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word

# Kitty alternative
bindkey '^[[1;3C' forward-word
bindkey '^[[1;3D' backward-word

# -----------------------------
# History (setas cima/baixo)
# -----------------------------
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# -----------------------------
# FZF widgets
# -----------------------------
bindkey '^T' fzf-file-widget
bindkey '^[c' fzf-cd-widget   # Alt+c
bindkey '^R' fzf-history-widget

bindkey '^F' _fzf_file_no_hidden

# -----------------------------
# Autosuggestions toggle
# -----------------------------
bindkey '^\' autosuggest-toggle
