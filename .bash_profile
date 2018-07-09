# Load git-aware-prompt so i know which branch i'm on and if its dirty
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source $GITAWAREPROMPT/main.sh

# Fancify my command line so its colorful
export PS1="\[\e[0;32m\][\u] \[\e[0;33m\]\w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

# TODO: This seems like overkill.
export PATH=/Applications/Postgres.app/Contents/Versions/9.3/bin:./node_modules/.bin:~/bin:/usr/local/bin:/usr/local/git/bin:/usr/ctags:$PATH

# TODO: This seems a bit uncessary
# subl='/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl'
test -x "$subl" && export EDITOR="'$subl' --wait"

# zeus alias
alias z="zeus"

# Simple HTTP server alias
alias server="python -m SimpleHTTPServer"

alias be="bundle exec"

# Initialize rbenv
eval "$(rbenv init -)"

# Initialize NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
# Upgrade nvm: cd "$NVM_DIR" && git pull origin master && git checkout `git describe --abbrev=0 --tags`

# Runs bash auto-complete script if loaded
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
