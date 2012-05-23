# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/fb/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export LC_ALL="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"

alias ls='ls -G'
alias ll='ls -l -G'
alias grep='grep -G'
#alias ls='ls --color'
#alias ll='ls -l --color'
#alias grep='grep --color'

###
# Need this so the prompt will work.

setopt prompt_subst
###
# See if we can use colors.

autoload colors zsh/terminfo
if [[ "$terminfo[colors]" -ge 8 ]]; then
  colors
fi
for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE; do
  eval PR_$color='%{$terminfo[bold]$fg[${(L)color}]%}'
  eval PR_LIGHT_$color='%{$fg[${(L)color}]%}'
  (( count = $count + 1 ))
done
PR_NO_COLOUR="%{$terminfo[sgr0]%}"
###


PROMPT='$PR_MAGENTA%n@%m $PR_RED%?$PR_GREEN %d$PR_NO_COLOUR $ '



export PATH=$PREPATH:$PATH
export PATH=/var/lib/gems/1.8/bin:$PATH
export PATH=/usr/local/mysql/bin:/Users/fb/bin:$PATH:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/Users/fb/.local/bin
export PATH=$PATH:$HOME/.cabal/bin
export PATH=$PATH:/Users/fb/Library/Haskell/bin
export PATH=$PATH:/Users/fb/bin

export EDITOR=vim

#export EPREFIX="$HOME/Gentoo"
#export PATH="$EPREFIX/usr/bin:$EPREFIX/bin:$EPREFIX/tmp/usr/bin:$EPREFIX/tmp/bin:$PATH"

export  PKG_CONFIG_PATH=/opt/local/lib/pkgconfig

export PYTHONPATH=$PYTHONPATH:/Library/Python/2.7/site-packages
#export NODE_PATH="/usr/local/lib/node"

. ~/.nvm/nvm.sh

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

source /Users/fb/.rvm/scripts/rvm
