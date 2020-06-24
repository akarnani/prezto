#
# Load archmage completions
#

if (( ! $+commands[mage] )); then
    return 1
fi

eval "$(mage _completion --zsh --prog $commands[mage])"
alias m=mage
alias mr='test -n "$ARCH_ENV" && eval $(mage -e $ARCH_ENV auth -p) || echo "Not in a mage session"'
