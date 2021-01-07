# Bootstrapper for setting up localhost.
# Downloads this repository and installs and runs ansible.
# Run with:
# curl https://raw.githubusercontent.com/ngarside/deployment/master/bootstrappers/linux.sh | bash

# Setup variables
os_id=$(awk -F= '/^ID=/{print $2}' /etc/os-release | tr -d '"')
os_name=$(awk -F= '/^NAME=/{print $2}' /etc/os-release | tr -d '"')

# Check the current OS is supported
if [[ "$OSTYPE" != "linux" ]]
then
	echo "Bootstrapper is not supported on operating system '$OSTYPE'"
	exit 1
fi
if [[ "$os_id" != "fedora" && "$os_id" != "opensuse-leap" && "$os_id" != "opensuse-tumbleweed" ]]
then
	echo "Bootstrapper is not supported on distribution '$os_name'"
	exit 1
fi

# Install pre-requisites
# 'git' is required by ansible-pull
# 'psutil' is required by Ansible dbus module - https://pypi.org/project/psutil
if [[ "$os_id" == "fedora" ]]
then
	sudo dnf install --assume-yes git ansible python-psutil
# Don't use 'ID_LIKE' as other variants of openSUSE aren't supported
elif [[ "$os_id" == "opensuse-leap" || "$os_id" == "opensuse-tumbleweed" ]]
then
	sudo zypper --non-interactive --quiet --no-cd install --no-recommends git ansible python3-psutil
fi
ansible-galaxy collection install community.general

# Run ansible
ansible-pull --ask-become-pass --url https://github.com/ngarside/deployment.git playbooks/systems/desktop.yml
