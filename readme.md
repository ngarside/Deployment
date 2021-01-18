# Deployment

Ansible scripts for setting up my devices. Very much a work in progress.

# Supported Operating Systems

- Fedora Workstation 33
- openSUSE Leap 15.2
- openSUSE Tumbleweed

# Setup

Run with:

```sh
curl https://raw.githubusercontent.com/ngarside/deployment/master/bootstrappers/unix.sh | sudo bash -s <system>
```

Where <system> is one of [ 'desktop', 'laptop', 'tablet' ]

Example to configure desktop:

```sh
curl https://raw.githubusercontent.com/ngarside/deployment/master/bootstrappers/unix.sh | sudo bash -s desktop
```

https://ubuntuforums.org/showthread.php?t=2420066

(Packman Essentials)
https://en.opensuse.org/Additional_package_repositories
sudo zypper install broadcom-wl

# Playbooks

- Base
- Gnome
- KDE
- Mobile
- Workstation

- Desktop
	- Base
	- KDE
	- Workstation
- Laptop
	- Base
	- Mobile
	- KDE
	- Workstation
- Tablet
	- Base
	- Mobile
	- Gnome

# Keybindings

All keybindings have been standardised where possible.

Desktop Environment

| Keys | Action |
|-|-|
| Super | Toggle launcher |
| Super + Enter | Open terminal |
| Super + W | Close active window |
| Super + D | Toggle show desktop |
| Super + [1-9] | Switch to workspace at specified index |

Selection

| Keys | Action |
|-|-|
| Ctrl + X | Cut |
| Ctrl + C | Copy |
| Ctrl + V | Paste |
| Ctrl + D | Duplicate |
| Ctrl + A | Select All |
| Ctrl + Shift + A | Clear Selection |

Tabs

| Keys | Action |
|-|-|
| Ctrl + T | New tab |
| Ctrl + W | Close current tab |
| Ctrl + Shift + W | Close all tabs |
| Ctrl + Tab | Switch to tab to right of current |
| Ctrl + Shift + Tab | Switch to tab to left of current |

Document

| Keys | Action |
|-|-|
| Ctrl + S | Save |
| Ctrl + Shift + S | Save As |
| Ctrl + Alt + S | Save All |
| Ctrl + O | Open |

Miscellaneous

| Keys | Action |
|-|-|
| Ctrl + Z | Undo |
| Ctrl + Shift + Z | Redo |
| Ctrl + I | Interrupt |

# License

This repository is licensed under the [Unlicense](license.md) except where otherwise stated.

The [background image](roles/background/files/background.png) is licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).