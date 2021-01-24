# ------------------------------------------------------------------------------
# Broadcom wireless adaptor setup
# ------------------------------------------------------------------------------

# Configures wireless adaptor
# openSUSE only
# Usage:
# curl https://raw.githubusercontent.com/ngarside/deployment/master/scripts/broadcom-wifi.sh | sudo bash
# https://en.opensuse.org/Additional_package_repositories
# https://pmbs.links2linux.de/project/show/Essentials
# If running script locally must be run as root

# ------------------------------------------------------------------------------
# Adds the packman essentials repository if it hasn't already been added
# ------------------------------------------------------------------------------

has_repo=$(zypper lr --details | grep https://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Tumbleweed/Essentials)
if [[ -z "$has_repo" ]]
then
	rpm --import http://packman.inode.at/suse/openSUSE_Tumbleweed/repodata/repomd.xml.key
	zypper addrepo --check --priority 90 https://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Tumbleweed/Essentials packman-essentials
	zypper refresh
	zypper --non-interactive --no-cd dup --no-recommends --from packman-essentials --allow-vendor-change
fi

# ------------------------------------------------------------------------------
# Installs the broadcom driver
# ------------------------------------------------------------------------------

zypper --non-interactive --no-cd install --no-recommends broadcom-wl
