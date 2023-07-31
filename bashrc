# .bashrc

# User specific aliases and functions

#module load compiler/gcc/8.3

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# VIM PATHS
PATH=/panfs/pfs.local/work/laird/sether35/sw/vim/bin:${PATH}
MANPATH=/panfs/pfs.local/work/laird/seth35/sw/vim/share/man:${MANPATH}

##
## The following sections is provided to the user as examples. 

#
# architecture independent environment variables
#
#HOST=`hostname`
#MANPATH="/usr/man:/usr/share/man:/usr/local/man:/usr/man/preformat:/usr/system/man"

#
# set default domain name and printer
#
#DOMAINNAME=`awk '/^domain/{print $2}' /etc/resolv.conf | head -1`
#PRINTER="paperjam"
#LANG="en_US"

#
# basic setup
#
#MAIL="/var/spool/mail/$USER"
#PATH="/usr/system/bin:/usr/local/bin:/bin:/usr/bin:/usr/bin/X11:/usr/X11R6/bin"
#MANPATH="$MANPATH:/usr/X11R6/man"

#
# optional tools setup
#

#if [ "X$WANT_MATLAB" == "X1" ]; then
#PATH="$PATH:/tools/matlab/bin"
#fi

#
# general system settings
#

#HISTSIZE=100
#HISTFILESIZE=200

# CEB - let me know about terminated jobs immediately
#set -b

# CEB - e.g. cd /temp will correct to cd /tmp
#shopt -s cdspell


#
# command aliases
#

#alias x=more
#alias ls='/bin/ls -CF --color=tty'
#alias lsa='/bin/ls -aCF --color=tty'
#alias cl=clear
#alias cls=clear
#alias hist=history
#alias f=finger
#alias fl='finger -l'
#alias jb='jobs -l'
#alias rm='rm -i'
#alias mv='mv -i'
#alias cp='cp -i'
#alias bc='bc -l'
#alias xlock='xlock -allowroot'

#export PATH MANPATH HOST WWW_HOME PRINTER MAIL DOMAINNAME

if [ ! -f ~/.ssh/id_rsa ]; then
    echo 'No public/private RSA keypair found.'
    ssh-keygen -t rsa -b 2048 -f ~/.ssh/id_rsa -N ""
    cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
    chmod 644 ~/.ssh/authorized_keys
fi
