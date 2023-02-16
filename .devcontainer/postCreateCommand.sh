apt-get update
apt-get -y install git
apt-get -y install curl

curl -o ~/.git-completion.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
curl -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh

echo "

# git bash settings

if [ -f ~/.git-completion.sh ]; then
  source ~/.git-completion.sh
fi

if [ -f ~/.git-prompt.sh ]; then
  source ~/.git-prompt.sh
fi

#GIT_PS1_SHOWDIRTYSTATE=true
#GIT_PS1_SHOWUNTRACKEDFILES=true
#GIT_PS1_SHOWSTASHSTATE=true
#GIT_PS1_SHOWUPSTREAM=auto

PS1='[\\[\\033[32m\\]\\u@\\h\\[\\033[00m\\] \\[\\033[33m\\]\\w\\[\\033[1;36m\\]\$(\\_\\_git_ps1 \" (%s)\")\\[\\033[00m\\]]\\n\\$ '
" >> ~/.bashrc
