# ------------------------------------------------------------------------------
# Configures wireless adaptor
# openSUSE only
# Run with:
# https://en.opensuse.org/Additional_package_repositories
# https://pmbs.links2linux.de/project/show/Essentials
# ------------------------------------------------------------------------------

sudo zypper ar -cfp 90 https://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Tumbleweed/Essentials packman-essentials

sudo zypper dup --from packman --allow-vendor-change

sudo zypper refresh

sudo zypper install broadcom-wl
