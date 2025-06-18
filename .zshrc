# Set up git prompt and prompt
if [[ -f ~/.git-prompt.sh ]]; then
  source ~/.git-prompt.sh
  setopt PROMPT_SUBST

  # Colored Git-aware prompt
  export PROMPT='%F{cyan}%n%f:%F{yellow}%~%f%F{green}$(__git_ps1 " [%s]")%f '
fi

# Useful aliases
alias ll='ls -la'