# Bootstrapper for setting up localhost.
# Downloads this repository and installs and runs ansible.
# Run with:
# curl https://raw.githubusercontent.com/ngarside/deployment/master/bootstrappers/nix.sh | bash

# Setup variables
OS=$(awk -F= '/^ID_LIKE=/{print $2}' /etc/os-release)
REPO=$(mktemp -d -t ci-XXXXXXXX)

# Install pre-requisites
# 'python-psutil' is required by Ansible dbus module
if [[ "$OS" == *"rhel"* ]]; then
	sudo dnf install --assume-yes git ansible python-psutil
elif [[ "$OS" == *"suse"* ]]; then
	sudo zypper --no-cd install --no-confirm --no-recommends git ansible python3-psutil
fi
ansible-galaxy collection install community.general

# Clone repo
git clone --depth=1 https://github.com/ngarside/deployment.git $REPO

# Run ansible
cd $REPO
ansible-playbook --ask-become-pass $REPO/playbooks/systems/desktop.yml

# Delete repo
rm -r -f $REPO
