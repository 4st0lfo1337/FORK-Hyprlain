# =========================================================
# Cursor shape per vi mode
# =========================================================

ZVM_INSERT_MODE_CURSOR=$ZVM_CURSOR_BEAM
ZVM_NORMAL_MODE_CURSOR=$ZVM_CURSOR_BLOCK
ZVM_VISUAL_MODE_CURSOR=$ZVM_CURSOR_BLOCK

# Start always in Insert mode
ZVM_LINE_INIT_MODE=$ZVM_MODE_INSERT

# Disable command mode line highlight
ZVM_VI_HIGHLIGHT_BACKGROUND=none
ZVM_VI_HIGHLIGHT_FOREGROUND=none
ZVM_VI_HIGHLIGHT_EXTRASTYLE=none

# Optional: make ESC switch instantly
ZVM_ESCAPE_KEYTIMEOUT=0

# =========================================================
# Custom keybindings
# =========================================================

zvm_after_init() {

    # -----------------------------
    # Restore Emacs-style shortcuts
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
    # Ctrl + Arrow
    # -----------------------------

    bindkey '^[[1;5C' forward-word
    bindkey '^[[1;5D' backward-word

    # Kitty alternative
    bindkey '^[[1;3C' forward-word
    bindkey '^[[1;3D' backward-word

    # -----------------------------
    # History
    # -----------------------------

    bindkey '^[[A' history-substring-search-up
    bindkey '^[[B' history-substring-search-down

    # -----------------------------
    # FZF
    # -----------------------------

    bindkey '^T' fzf-file-widget
    bindkey '^[c' fzf-cd-widget
    bindkey '^R' fzf-history-widget

    bindkey '^F' _fzf_file_no_hidden

    # -----------------------------
    # Autosuggestions
    # -----------------------------

    bindkey '^\' autosuggest-toggle
}
