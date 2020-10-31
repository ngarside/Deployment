# Bootstrapper for setting up localhost.
# Downloads this repository then installs and runs ansible.
# Run with:
# wget -O - https://github.com/ngarside/deployment/blob/master/client.sh | bash

# Variables
REPO=$(mktemp -d -t ci-XXXXXXXX)

# Install pre-requisites
sudo dnf install git ansible -y

# Clone repo
git clone --depth=1 https://github.com/ngarside/deployment.git $REPO

# Delete repo
rm -r -f $REPO