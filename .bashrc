# Skip si pas en mode interactif
[ -z "$PS1" ] && return

shopt -s checkwinsize # for resizables terms and screen -r

export LS_OPTIONS='--color=auto' # colors in ls commands
eval "`dircolors`"
export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.7z=01;31:*.xz=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.flac=01;35:*.mp3=01;35:*.mpc=01;35:*.ogg=01;35:*.wav=01;35:'; # ls colors
export EDITOR="vim" # default text editor

# History
export HISTSIZE=5000 # size
export HISTFILESIZE=20000 # filesize
export HISTIGNORE="&:ls:[bf]g:exit:history:reset:clear:"; # do not store that commands
export HISTTIMEFORMAT="%Y-%m-%dT%H:%M:%S " # format
export HISTCONTROL=ignoredups # ignore duplicated entries

# command line entry
export PS1="\[\033[36m\]\t \[\033[33;1m\]\w\[\033[m\] \$(git branch 2>/dev/null | grep '^*' | colrm 1 2) \$  \n> "
export PS2="> "

umask 022

# aliases
if [ -f $TILAPDIR/bashrc/alias ]; then
    source $TILAPDIR/bashrc/alias
fi

# functions
if [ -f $TILAPDIR/bashrc/functions ]; then
    source $TILAPDIR/bashrc/functions
fi

#####################################################
# START

clear

if [ -f $TILAPDIR/bashrc/logo.sh ] ; then
	. $TILAPDIR/bashrc/logo.sh # welcome logo
fi

if [ -x /usr/games/fortune ]; then
    /usr/games/fortune -s     # Makes our day a bit more fun.... :-)
fi

echo ""
