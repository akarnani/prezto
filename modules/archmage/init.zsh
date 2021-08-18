#
# Load archmage completions
#

if (( ! $+commands[mage] )); then
    return 1
fi
eval "$(mage completion zsh)"
alias m=mage
alias mr='test -n "$ARCH_ENV" && eval $(mage -e $ARCH_ENV auth -n "$VAULT_NAMESPACE" -p) || echo "Not in a mage session"'
