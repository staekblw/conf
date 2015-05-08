##
# Your previous /Users/lbwang/.bash_profile file was backed up as /Users/lbwang/.bash_profile.macports-saved_2015-03-08_at_21:07:53
##

# MacPorts Installer addition on 2015-03-08_at_21:07:53: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


##
# Your previous /Users/lbwang/.bash_profile file was backed up as /Users/lbwang/.bash_profile.macports-saved_2015-03-08_at_21:21:53
##

# MacPorts Installer addition on 2015-03-08_at_21:21:53: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.
export PATH="/usr/local/Cellar/vim/7.4.488/bin:$PATH" 

set -o vi
alias p="cd ~/Desktop/projects/"
alias doc="cd ~/Desktop/work-doc/"
alias p1="cd /Users/lbwang/Desktop/projects/asit-parent/asit-gui/"
alias gae="cd /Users/lbwang/Desktop/personal/goagent-3.0/local && python proxy.py"

alias m="cd /Users/lbwang/Desktop/personal"

alias f="fg"
alias g="git"
alias gps="git push"
alias gs="git status"
alias ga="git add"
alias gpl="git pull --rebase"
alias gcl="git clone"
alias gd="git difftool"
alias grt="git checkout -head"
alias gb="git checkout"
alias gc="git commit -m"
alias v="vim"
alias cx="chmod +x"
alias rmd="rm -rf"
alias cpr="cp -r"
alias eb="vim ~/.bash_profile"
alias ez="vim ~/.zshrc"
alias eg="vim ~/.gitconfig"
alias s="source ~/.zshrc && source ~/.bash_profile && cp ~/.bash_profile ~/github/conf/.bash_profile && cp ~/.vimrc ~/github/conf/.vimrc && cp ~/.zshrc ~/github/conf/.zshrc"
alias ..="cd .."
alias c="cd"
alias rb="ruby"
alias l="ls"
alias vd="vimdiff"
alias r="clear"
alias ev="v ~/.vimrc"
alias gr="grep -rE --color=auto"
alias md="mkdir -p"
alias ec="echo"
alias tc="touch"
alias o="open ."
alias oi="idea ."
alias grdi="./gradlew cleanIdea idea"
alias grd="./gradlew clean build"
alias grdjr="./gradlew jR"
# ssh shortcut
alias 177="ssh build@10.38.21.177"
alias 61="ssh p_dev@10.38.23.61"
alias 64="ssh p_dev@10.38.23.64"
alias 60="ssh p_dev@10.38.23.60"
alias 110="ssh appadmin@10.99.246.110"

alias -s html=vi
alias -s md=vi
alias -s rb=vi
alias -s py=vi
alias -s js=vi
alias -s c=vi
alias -s java=vi
alias -s txt=vi
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
alias mykey="less ~/.ssh/id_rsa.pub"
