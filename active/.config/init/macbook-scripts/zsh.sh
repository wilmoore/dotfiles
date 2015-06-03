echo "Updating /etc/shells with homebrew ZSH."

grep -xq "$(brew --prefix zsh)/bin/zsh" /etc/shells || sudo sh -c 'printf "%s\n" "$(brew --prefix zsh)/bin/zsh" >> /etc/shells'
grep -xq "$(brew --prefix zsh)/bin/zsh" /etc/shells || fail 'Unable to whitelist $(brew --prefix zsh)/bin/zsh'

echo "Preparing to change your default shell to ZSH."
chsh -s $(brew --prefix zsh)/bin/zsh
