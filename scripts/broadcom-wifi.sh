# ------------------------------------------------------------------------------
# Configures wireless adaptor
# openSUSE only
# Usage:
# curl https://raw.githubusercontent.com/ngarside/deployment/master/scripts/broadcom-wifi.sh | sudo bash
# https://en.opensuse.org/Additional_package_repositories
# https://pmbs.links2linux.de/project/show/Essentials
# If running script locally must be run as root
# ------------------------------------------------------------------------------

zypper ar -cfp 90 https://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Tumbleweed/Essentials packman-essentials

zypper dup --from packman-essentials --allow-vendor-change

zypper refresh

zypper install broadcom-wl
