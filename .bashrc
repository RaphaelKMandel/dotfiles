# Aliases
alias act="source .venv/bin/activate"

alias gs="git status"
alias ga="git add ."
alias gc="git commit"
alias gac="git add . && git commit"
alias gp="git push"
alias glo="git log --oneline --graph --decorate"

source ~/git-prompt.sh

force_color_prompt=yes
color_prompt=yes
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;33m\]$(__git_ps1)\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w$(parse_git_branch)\$ '
fi
unset color_prompt force_color_prompt
