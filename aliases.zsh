alias dirs='dirs -v'

alias pd='pushd'
alias po='popd'
alias cdu='cd ..'
for ((n = 2; n < 10; n++))
do
    alias pd$n="pushd +$n"
    alias po$n="popd +$n"
    i=1
    parentdir=../
    until [ "$i" -eq "$n" ]
    do
        parentdir="${parentdir}../"
        i=$(expr $i + 1)
    done
    alias cdu$n="cd $parentdir"
done

if [ -e ~/.irb ]; then alias irb='(cd ~/.irb && bundle exec irb)'; fi
alias sc='ruby script/console'
alias sd='ruby script/server --debugger'
alias ss='thin --stats "/thin/stats" start'

alias mr='mate CHANGELOG app config db lib public script spec test'
alias .='pwd'
alias ...='cd ../..'

alias _='sudo'

#alias g='grep -in'

alias g='git'
alias gst='git status'
alias gl='git pull'
alias gp='git push'
alias gd='git diff | mate'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a'

alias history='fc -l 1'

if [ ! -e ~/.profile_local ]; then alias ls='ls -F'; fi
alias ll='ls -l'
alias lt='ll -t'
alias la='ll -a'
alias l='ll | $PAGER'

alias rl='readlink'

alias sgem='sudo gem'

alias rfind='find . -name *.rb | xargs grep -n'

alias git-svn-dcommit-push='git svn dcommit && git push github master:svntrunk'

alias et='mate . &'
alias ett='mate app config lib db public spec test Rakefile Capfile Todo &'
alias etp='mate app config lib db public spec test vendor/plugins vendor/gems Rakefile Capfile Todo &'
alias etts='mate app config lib db public script spec test vendor/plugins vendor/gems Rakefile Capfile Todo &'



