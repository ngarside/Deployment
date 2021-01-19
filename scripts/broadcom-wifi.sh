# ------------------------------------------------------------------------------
# Configures wireless adaptor
# openSUSE only
# ------------------------------------------------------------------------------

sudo zypper ar -cfp 90 https://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Tumbleweed/Essentials packman-essentials

sudo zypper dup --from packman --allow-vendor-change

sudo zypper install broadcom-wl
