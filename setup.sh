# Bootstrapper for setting up localhost.
# Downloads this repository and installs and runs ansible.
# Run with:
# curl https://raw.githubusercontent.com/ngarside/deployment/master/setup.sh | bash

# Setup variables
REPO=$(mktemp -d -t ci-XXXXXXXX)

# Install pre-requisites
# 'python-psutil' is required by Ansible dbus module
sudo dnf install --assumeyes git ansible python-psutil

# Clone repo
git clone --depth=1 https://github.com/ngarside/deployment.git $REPO

# Run ansible
ansible-playbook --ask-become-pass $REPO/client.yml

# Delete repo
rm -r -f $REPO