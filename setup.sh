# Bootstrapper for setting up localhost.
# Downloads this repository then installs and runs ansible.
# Run with:
# wget --no-cache -O - https://raw.githubusercontent.com/ngarside/deployment/master/setup.sh | bash

# Variables
REPO=$(mktemp -d -t ci-XXXXXXXX)

# Install pre-requisites
sudo dnf install --assumeyes --cacheonly git ansible

# Clone repo
git clone --depth=1 https://github.com/ngarside/deployment.git $REPO

# Delete repo
rm -r -f $REPO