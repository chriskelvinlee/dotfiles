export PATH=/opt/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:$PATH

alias joeruff="ssh -i ~/.ssh/nestlabs.key ubuntu@joeruff-vpc.nestlabs.com"
echo "foob"

# Colors for Git
parse_git_branch() {
  # git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[git:\1]/'
}
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
DEFAULT="\[\033[0;39m\]"
CYAN="\[\033[0;36m\]"
MAGENTA="\[\033[0;35m\]"
LIGHTGREY="\[\033[0;37m\]"

PS1="$CYAN\$(date +%H:%M) \$(pwd)$YELLOW \$(parse_git_branch)\n$GREEN\$ $DEFAULT"

# Setting PATH for EPD-7.1-2
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/EPD64.framework/Versions/Current/bin:${PATH}"
export PATH

MKL_NUM_THREADS=1
export MKL_NUM_THREADS

# EC2 Command line tools
export EC2_HOME=~/.ec2
export PATH=$PATH:$EC2_HOME/bin
export EC2_PRIVATE_KEY=`ls $EC2_HOME/pk-*.pem`
export EC2_CERT=`ls $EC2_HOME/cert-*.pem`
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/
##
# Your previous /Users/cklee/.bash_profile file was backed up as /Users/cklee/.bash_profile.macports-saved_2011-11-23_at_16:05:17
##

# MacPorts Installer addition on 2011-11-23_at_16:05:17: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# Nest Packages
export PATH=$PATH:/Users/cklee/packages/elastic-mapreduce-ruby/
