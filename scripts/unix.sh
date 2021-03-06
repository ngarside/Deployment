#-------------------------------------------------------------------------------
# Linux bootstrapper
#-------------------------------------------------------------------------------

# Overview:
# - Installs the pre-requisite packages for running the setup
# - Downloads and runs the setup against localhost

# Platforms:
# - Fedora
# - openSUSE Leap
# - openSUSE Tumbleweed

# Usage:
# curl https://raw.githubusercontent.com/ngarside/deployment/master/scripts/unix.sh | sudo bash -s <system>
# Where <system> is one of [ 'desktop', 'laptop', 'tablet', 'user' ]
# Example to configure desktop:
# curl https://raw.githubusercontent.com/ngarside/deployment/master/scripts/unix.sh | sudo bash -s desktop

#-------------------------------------------------------------------------------
# Process arguments
#-------------------------------------------------------------------------------

if [[ -z "$1" ]]
then
    echo "Parameter not passed, must be one of [ 'desktop', 'laptop', 'tablet', 'user' ]"
    exit 1
elif [[ "$1" != "desktop" && "$1" != "laptop" && "$1" != "tablet" && "$1" != "user" ]]
then
    echo "Parameter invalid, must be one of [ 'desktop', 'laptop', 'tablet', 'user' ]"
    exit 1
else
    playbook=$1
fi

#-------------------------------------------------------------------------------
# Setup variables
#-------------------------------------------------------------------------------

os_id=$(awk -F= '/^ID=/{print $2}' /etc/os-release | tr -d '"')
os_name=$(awk -F= '/^NAME=/{print $2}' /etc/os-release | tr -d '"')

#-------------------------------------------------------------------------------
# Check the current OS is supported
#-------------------------------------------------------------------------------

if [[ "$OSTYPE" != "linux" && "$OSTYPE" != "linux-gnu" ]]
then
	echo "Bootstrapper is not supported on operating system '$OSTYPE'"
	exit 1
fi
if [[ "$os_id" != "fedora" && "$os_id" != "opensuse-leap" && "$os_id" != "opensuse-tumbleweed" ]]
then
	echo "Bootstrapper is not supported on distribution '$os_name'"
	exit 1
fi

#-------------------------------------------------------------------------------
# Install pre-requisites
#-------------------------------------------------------------------------------

# 'git' is required by ansible-pull
# 'psutil' is required by Ansible dbus module - https://pypi.org/project/psutil
if [[ "$os_id" == "fedora" ]]
then
	dnf install --assume-yes git ansible python-psutil
# Don't use 'ID_LIKE' as other variants of openSUSE aren't supported
elif [[ "$os_id" == "opensuse-leap" || "$os_id" == "opensuse-tumbleweed" ]]
then
	zypper --non-interactive --no-cd install --no-recommends git ansible python3-psutil
fi

ansible-galaxy collection install ansible.posix
ansible-galaxy collection install community.crypto
ansible-galaxy collection install community.general

#-------------------------------------------------------------------------------
# Run ansible
#-------------------------------------------------------------------------------

ansible-pull --url https://github.com/ngarside/deployment.git playbooks/systems/$playbook.yml
