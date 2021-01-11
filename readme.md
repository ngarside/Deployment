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

# Roles

android-studio
background
cleanup
dotnet
gdm
git
gnome-podcasts
gnome-weather
jekyll
kde-plasma
krita
nautilus
powertop
systemd
user
appimage
blender
dconf-editor
firefox
geary
gnome-calculator
gnome-shell
gtk
kcalc
konsole
libreoffice
papirus
remmina
templates
vscode
audacity
chromium
dolphin
flatpak
gimp
gnome-clocks
gnome-terminal
inkscape
kdenlive
krdc
macbook
plasma-systemmonitor
spotify
unity
thunderbird

# Keybindings

System keybindings:

| Keys | Action |
|-|-|
| Super | Toggle launcher |
| Super + Enter | Open terminal |
| Alt + F4 | Close active window |
| Super + [1-9] | Open workspace at specified index |

App keybindings have been standardised where possible:

| Keys | Action |
|-|-|
| Ctrl + T | New tab |
| Ctrl + W | Close current tab |
| Ctrl + Shift + W | Close all tabs |
| Ctrl + Tab | Switch to tab to right of current |
| Ctrl + Shift + Tab | Switch to tab to left of current |
| Ctrl + X | Cut |
| Ctrl + C | Copy |
| Ctrl + V | Paste |
| Ctrl + Z | Undo |
| Ctrl + Shift + Z | Redo |
| Ctrl + I | Interrupt |
| Ctrl + D | Duplicate |
| Ctrl + S | Save |
| Ctrl + Shift + S | Save As |
| Ctrl + Alt + S | Save All |
| Ctrl + O | Open |
| Ctrl + A | Select All |
| Ctrl + Shift + A | Clear Selection |

# License

This repository is licensed under the [Unlicense](license.md) except where otherwise stated.

The [background image](roles/background/files/background.png) is licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).