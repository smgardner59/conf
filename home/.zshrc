# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/sgardner/.oh-my-zsh"

# #####################################################################
# Theme for Zsh and Oh-my-zsh configuration.
#
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# 2020-01-06 smg Changed theme from 'robbyrussel' to 'powerlevel9k'
# 2020-01-06 smg Added hints for powerlevel9k display line.
#Shorten directory 
shownPOWERLEVEL9K_SHORTEN_DIR_LENGTH=1POWERLEVEL9K_SHORTEN_DELIMITER=””
POWERLEVEL9K_SHORTEN_STRATEGY=”truncate_from_right”
#Set default user to avoid showing 'user' on every 
lineDEFAULT_USER=”whoami”
# Use full font capabilities
POWERLEVEL9K_MODE="nerdfont-complete"
ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git github history z brew iterm2 osx jenv)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# #####################################################################
# Aliases
# For a full list of active aliases, run `alias`.
#
alias a='alias'

a zshconfig="vim ~/.zshrc"
a ohmyzsh="vim ~/.oh-my-zsh"

a szc='source ~/.zshrc'
a path='echo -e ${PATH//:/\\n}'

# #####################################################################
# NVIM (vim) setup
# Prefer nvim in all situations until it is a problem.
#
a vim='nvim'
if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='nvim'
else
	export EDITOR='nvim'
fi

# #####################################################################
# Adding completions and sytax highlighting to zsh
# #####################################################################

# zsh completions
fpath=(/usr/local/share/zsh-completions $fpath)

# zsh syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# #####################################################################
# Setting up GIT for EZT development.
# export GIT_HOME=~/dev/ezt 

# #####################################################################
# Java
# Setup JEnv and Java JDKs
#

export JENV_ROOT=/usr/local/opt/jenv
export PATH="$HOME/.jenv/bin:$PATH"
if which jenv > /dev/null ; then
  eval "$(jenv init -)"
fi

a osxjh='/usr/libexec/java_home'
a javaversions='jenv versions'

# #####################################################################
# Python configuration (using anaconda)

export PATH="$HOME/opt/anaconda3/bin:$PATH"


# #####################################################################
# Docker startup

# #####################################################################
# Functions 
# These will be kept here until I move them to a ~/bin directory.


# #####################################################################
#    END OF FILE
# #####################################################################
