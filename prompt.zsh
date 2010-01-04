if [ `which most > /dev/null` ]; then
    export PAGER=most
else
    export PAGER=less
fi
export LC_CTYPE=en_US.UTF-8

# Directory stuff.
setopt AUTO_NAME_DIRS

# Speed stuff.

setopt NO_BEEP
setopt AUTO_CD
setopt MULTIOS
setopt CDABLEVARS

# Finding stuff.
setopt EXTENDEDGLOB

bindkey -v
bindkey "^R" history-incremental-search-backward
bindkey '^S' history-incremental-search-forward

if [[ x$WINDOW != x ]]
then
    SCREEN_NO="%B$WINDOW%b "
else
    SCREEN_NO=""
fi

PS1="%n@%m:%~%# "

# Setup the prompt with pretty colors
setopt prompt_subst

export LSCOLORS="Gxfxcxdxbxegedabagacad"

source "$ZSH/themes/$ZSH_THEME.zsh-theme"
