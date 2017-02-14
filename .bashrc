# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
#HISTSIZE=1000
#HISTFILESIZE=2000

HISTSIZE=2000
HISTFILESIZE=4000
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
  fi
#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;33;1m\]\u\[\033[00;00;1m\]@\[\033[01;33;1m\]\h\[\033[00;31;1m\]:\[\033[00;00;1m\]\w \[\033[01;32;1m\]\$ \[\033[01;36;1m\]\t'
#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;33;1m\]\u\[\033[00;00;1m\]@\[\033[01;33;1m\]\h\[\033[00;31;1m\]\[\033[01;32;1m\]╠═╬═╬═╬═╬═╬═╬═╬═╬═╬═╣\[\033[01;31;1m\]\t\[\033[01;32;1m\]╠═╬═╬═╬═╬═╬═╬═╬═╬═╬═╣\n\[\033[00;00;1m\]\w \[\033[01;33;1m\]\$ ★★★★★★★★★★★★★★★►►►►►►►\[\033[01;36;1m\]'
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;33;1m\]\u\[\033[00;00;1m\]@\[\033[01;33;1m\]\h\[\033[00;31;1m\]\[\033[01;32;1m\]╠═╬═╬═╬═╬═╬═╬═╬═╬═╬═╣\[\033[01;31;1m\]\t\[\033[01;32;1m\]╠═╬═╬═╬═╬═╬═╬═╬═╬═╬═╣\n\[\033[00;00;1m\]\w \[\033[01;33;1m\]\$ ♣♣♣♣♣♣♣♣♣♣♣♣♣►►►►►►►►►►►\[\033[01;36;1m\]'
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
#POWERLINE_SCRIPT=/usr/share/powerline/bindings/bash/powerline.sh
#if [ -f $POWERLINE_SCRIPT ]; then
  #source $POWERLINE_SCRIPT
#fi
if [ -f .powerline ];then
    source .powerline
fi
#alias 
alias api='sudo apt-get install'
alias apd='sudo apt-get update'
alias apg='sudo apt-get upgrade'
alias apc='sudo apt-cache search'
alias py='python'
alias py3='python3'
alias c='cd'
alias ex='exit'
alias v='vim'
alias vi='vim -c :let\ qt=1'
alias df='df -h'
alias fr='free -h'
alias vpn='sudo ~/Public/XX-Net-master/code/3.2.9/xx_net.sh start'
alias unvpn='sudo  ~/Public/XX-Net-master/code/3.2.9/xx_net.sh stop'
alias reboot='systemctl reboot -i'
#alias sshroot='ssh ubuntu@123.207.83.123'
alias emacs="emacs -nw"
alias gits="git status"
alias gita="git add"
alias gitc="git commit -m"
alias gitb="git branch"
export PATH=/opt/Qt/5.7/gcc_64/bin:$PATH
#set oracle jdk environment
#export JAVA_HOME=/opt/java  ## 这里要注意目录要换成自己解压的jdk 目录
#export JRE_HOME=${JAVA_HOME}/jre  
#export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib  
#export PATH=${JAVA_HOME}/bin:$PATH  
alias cl="cd .."
export PATH=/opt/mxe/usr/bin:$PATH
alias wqmake="/opt/mxe/usr/i686-w64-mingw32.static/qt5/bin/qmake "
export PKG_CONFIG_PATH="/opt/mxe/usr/x86_64-w64-mingw32.static/"
export PKG_CONFIG_PATH_i686_w64_mingw32_static="/opt/mxe/usr/i686-w64-mingw32.static"
alias hn="hexo n "
alias he="hexo g && hexo d"
