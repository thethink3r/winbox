# winbox
winbox flatpak with darkmode

![Screenshot](Screenshot.png?raw=true "Screenshot")

Todo: Fix Desktop Icon

# Build
```bash
git clone https://github.com/thethink3r/winbox.git
cd winbox
./build.sh
```
## Requirements
```bash
apt install flatpak-builder
flatpak install org.freedesktop.Sdk
```

# winbox.flatpak

## Install flatpak
```bash
flatpak --user install winbox.flatpak
```

## Install Runtime Requirements:
```bash
flatpak --user remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak --user install org.freedesktop.Platform/x86_64/22.08
flatpak --user install org.winehq.Wine/x86_64/stable-22.08
```

Note:

First Start darkmode not enable -> close and restart Application

Menu entry / icon is visible after reboot


