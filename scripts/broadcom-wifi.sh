# ------------------------------------------------------------------------------
# Configures wireless adaptor
# openSUSE only
# Usage:
# curl https://raw.githubusercontent.com/ngarside/deployment/master/scripts/broadcom-wifi.sh | sudo bash
# https://en.opensuse.org/Additional_package_repositories
# https://pmbs.links2linux.de/project/show/Essentials
# If running script locally must be run as root
# ------------------------------------------------------------------------------

has_repo=$(zypper lr --details | grep https://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Tumbleweed/Essentials)

if [[ -z "$has_repo" ]]
then
	zypper ar -cfp 90 https://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Tumbleweed/Essentials packman-essentials
	zypper dup --from packman-essentials --allow-vendor-change
	zypper refresh
fi

zypper install broadcom-wl
