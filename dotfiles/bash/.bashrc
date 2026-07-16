# ==========================
# Modern Minimal Prompt
# ==========================

# Truecolor ANSI colors
SAND='\[\e[38;2;216;176;122m\]'   # #D8B07A
TEXT='\[\e[38;2;210;218;208m\]'   # Soft light gray
DIM='\[\e[38;2;120;120;120m\]'    # Subtle separator
RESET='\[\e[0m\]'

# Enable terminal title
case "$TERM" in
    xterm*|rxvt*|foot*)
        PS1="\[\e]0;\u@\h: \w\a\]"
        ;;
esac

# Prompt
PS1+="${SAND}\u@\h${DIM} · ${TEXT}\w${RESET}\n${SAND}❯${RESET} "
