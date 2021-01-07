# Bootstrapper for setting up localhost.
# Downloads this repository and installs and runs ansible.
# Run with:
# curl https://raw.githubusercontent.com/ngarside/deployment/master/bootstrappers/linux.sh | bash

# Setup variables
os_id=$(awk -F= '/^ID=/{print $2}' /etc/os-release)
os_name=$(awk -F= '/^NAME=/{print $2}' /etc/os-release)
repo=$(mktemp -d -t ci-XXXXXXXX)

# Install pre-requisites
# 'psutil' is required by Ansible dbus module - https://pypi.org/project/psutil
if [[ "$os_id" == "fedora" ]]
then
	sudo dnf install --assume-yes git ansible python-psutil
# Don't use 'ID_LIKE' as other variants of openSUSE aren't supported
elif [[ "$os_id" == "opensuse-leap" || "$os_id" == "opensuse-tumbleweed" ]]
then
	sudo zypper --non-interactive --quiet --no-cd install --no-recommends git ansible python3-psutil
else
	echo "Bootstrapper is not supported on operating system '$os_name'"
	exit 1
fi
ansible-galaxy collection install community.general

# Clone repo
git clone --depth=1 https://github.com/ngarside/deployment.git $repo

# Run ansible
cd $repo
ansible-playbook --ask-become-pass $repo/playbooks/systems/desktop.yml

# Delete repo
rm -r -f $repo
