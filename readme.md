# Deployment

Ansible scripts for setting up my devices. Very much a work in progress.

# Platforms

- Fedora Workstation
- openSUSE Leap
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

System keybindings:

| Keys | Action |
|-|-|
| Super | Toggle launcher |
| Super + Enter | Open terminal |
| Alt + F4 | Close active window |
| Super + [1-9] | Open workspace at specified index |

App keybindings have been standardised where possible:

| Category | Keys | Action |
|-|-|-|
| System | Ctrl + T | New tab |
| System | Ctrl + W | Close current tab |
| System | Ctrl + Shift + W | Close all tabs |
| System | Ctrl + Tab | Switch to tab to right of current |
| System | Ctrl + Shift + Tab | Switch to tab to left of current |
| System | Ctrl + X | Cut |
| System | Ctrl + C | Copy |
| System | Ctrl + V | Paste |
| System | Ctrl + Z | Undo |
| System | Ctrl + Shift + Z | Redo |
| System | Ctrl + I | Interrupt |
| System | Ctrl + D | Duplicate |
| System | Ctrl + S | Save |
| System | Ctrl + Shift + S | Save As |
| System | Ctrl + Alt + S | Save All |
| System | Ctrl + O | Open |
| System | Ctrl + A | Select All |
| System | Ctrl + Shift + A | Clear Selection |

# License

This repository is licensed under the [Unlicense](license.md) except where otherwise stated.

The [background image](roles/background/files/background.png) is licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).