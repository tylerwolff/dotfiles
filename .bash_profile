function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\W \[\033[0;37m\]\$(parse_git_branch) \[\033[0m\]⚡ "

alias be="bundle exec"
alias gst="git status"
alias glog="git log --format='%Cgreen%H%Creset %C(cyan)%an%Creset - %s' --graph"
alias undo="git reset --soft 'HEAD^'"
alias active="git for-each-ref --sort=-committerdate --format='%(committerdate:short) %(refname)' refs/heads refs/remotes --count=10"
alias sp='be rspec --drb'
alias ips="ifconfig -a | grep -o 'inet6\? \(\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\|[a-fA-F0-9:]\+\)' | sed -e 's/inet6* //'"
alias merges='clear && git log --format="%Cgreen%H%Creset %C(cyan)%an%Creset - %s" -100 | grep "Merge pull request"'
alias run="touch tmp/restart.txt"
alias server="python -m SimpleHTTPServer 8080"
alias www="cd ~/Capture/capture-www/"
alias api="cd ~/Capture/capture-api/"
alias dbrestart="/usr/local/Cellar/postgresql/9.4.4/bin/pg_ctl restart -D /usr/local/var/postgres"
alias dbstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias dbstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias standup="git log --reverse --branches --since=$(if [[ "Mon" == "$(date +%a)" ]]; then echo "last friday"; else echo "yesterday"; fi) --author=$(git config --get user.email) --format=format:'%C(cyan) %ad %C(yellow)%h %Creset %s %Cgreen%d' --date=local"
alias cur="parse_git_branch | sed -e 's/(//g' | sed -e 's/)//g' | tr -d '\n' | pbcopy"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
