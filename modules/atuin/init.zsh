# Return if requirements are not found.
if (( ! $+commands[atuin] )); then
  return 1
fi

eval "$(atuin init zsh)"
