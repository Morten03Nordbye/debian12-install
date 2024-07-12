# If running bash
if [ -n "$BASH_VERSION" ]; then
    # Include .bashrc if it exists
    [ -f "$HOME/.bashrc" ] && . "$HOME/.bashrc"
fi

# Set PATH so it includes user's private bin if it exists
[ -d "$HOME/bin" ] && PATH="$HOME/bin:$PATH"
[ -d "$HOME/.local/bin" ] && PATH="$HOME/.local/bin:$PATH"
