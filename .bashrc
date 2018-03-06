# .bashrc
# 
# Cygwin .bashrc for me.
# 2017-11-27 smg created from standard Cygwin distribution.

# ~/.bashrc: executed by bash(1) for interactive shells.

# User dependent .bashrc file
echo "Starting .bashrc"
# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Shell Options
#
# See man bash for more options...
#
# Don't wait for job termination notification
# set -o notify
#
# Don't use ^D to exit
set -o ignoreeof

# Make bash append rather than overwrite the history on disk
shopt -s histappend

# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
# shopt -s cdspell

###################################################
# Application environment vars and path
export MAVEN_HOME="/c/apps/maven"
export MAVEN_OPTS=""

export JAVA_HOME="/c/Java/jdk1.8.0_151"


# Define to avoid flattening internal contents of tar files
# COMP_TAR_INTERNAL_PATHS=1
#
# Uncomment to turn on programmable completion enhancements.
# Any completions you add in ~/.bash_completion are sourced last.
# [[ -f /etc/bash_completion ]] && . /etc/bash_completion

# History Options
#
# Don't put duplicate lines in the history.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups

# Ignore some controlling instructions
# HISTIGNORE is a colon-delimited list of patterns which should be excluded.
# The '&' is a special pattern which suppresses duplicate entries.
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit'
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls' # Ignore the ls command as well
#
# Whenever displaying the prompt, write the previous line to disk
export PROMPT_COMMAND="history -a"

# Aliases
#
# Some people use a different file for aliases
if [ -f "${HOME}/.aliases" ]; then
  source "${HOME}/.aliases"
fi

# Default to human readable figures
alias df='df -h'
alias du='du -h'


# Umask
#
# /etc/profile sets 022, removing write perms to group + others.
# Set a more restrictive umask: i.e. no exec perms for others:
# umask 027
# Paranoid: neither group nor others have any perms:
# umask 077

# Functions
#
# Some people use a different file for functions
# if [ -f "${HOME}/.bash_functions" ]; then
#   source "${HOME}/.bash_functions"
# fi
#
# Some example functions:
#
# function settitle
settitle () 
{ 
  echo -ne "\e]2;$@\a\e]1;$@\a"; 
}

###############################################################
# Startup ssh-agent if it not running.
# ssh-agent auto-launch (0 = agent running with key; 1 = w/o key; 2 = not run.)
agent_run_state=$(ssh-add -l >| /dev/null 2>&1; echo $?)
if   [ $agent_run_state = 2 ]; then
  eval $(ssh-agent -s)
  ssh-add ~/.ssh/id_rsa
elif [ $agent_run_state = 1 ]; then
  ssh-add ~/.ssh/id_rsa
fi

################################################################
# Handle the colors for the terminal. Uses the Solarized theme

# Default to dark
source ~/.solar/sol.dark


# Aliases to change theme
alias sodark="source ~/.solar/sol.dark"
alias solight="source ~/.solar/sol.light"

echo "Ending .bashrc"
