# .bash_profile
# 
# Cygwin .bash_profile (login shell) for me.
# 2017-11-30 smg  Created from standard Cygwin distribution.

# ~/.bash_profile: executed by bash(1) for login shells.

# Application enviroment variables
#  NOTE: we inherit a bunch from the Windows environemnt
#        so most are not set here. All of the java tools
#        are set from the Windows environment control pannel.

# User dependent .bash_profile file
echo "Starting .bash_profile"
# source the users bashrc if it exists
if [ -f "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi

# Set PATH so it includes user's private bin if it exists
# if [ -d "${HOME}/bin" ] ; then
#   PATH="${HOME}/bin:${PATH}"
# fi

# Set MANPATH so it includes users' private man if it exists
# if [ -d "${HOME}/man" ]; then
#   MANPATH="${HOME}/man:${MANPATH}"
# fi

# Set INFOPATH so it includes users' private info if it exists
# if [ -d "${HOME}/info" ]; then
#   INFOPATH="${HOME}/info:${INFOPATH}"
# fi

echo "Ending .bash_profile"

