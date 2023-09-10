Ok, let's go, first of all, install Fedora in your computer. Personally, I use NetInstall ISO for that purpose, selecting only Fedora custom system, Network Manager modules and standard utilities

> [!WARNING]
> On some computers, if you have an Intel Wireless card, probably you will need to install the driver manually first, check more about this in https://wiki.gentoo.org/wiki/Iwlwifi)

After you successfully installed Fedora:

> [!NOTE]
> Now, there's a script on my repo that makes all that process semi automatic, 
> install git (sudo dnf install git), clone my repo and run first.install from
> scripts folder, but just do it if you are installing my config for first time.

1. Install some basic packages.
```sh
sudo dnf install dunst libnotify sway swaybg swaylock swayidle xdg-desktop-portal-wlr 
xorg-x11-server-Xwayland clipman wl-clipboard pipewire pipewire-alsa 
pipewire-jack-audio-connection-kit wireplumber waybar alacritty git pcmanfm
file-roller neovim bluez blueman bluez-tools network-manager-applet btop
fastfetch mpv imv grim slurp ranger exa bat pavucontrol nodejs yarnpkg inxi
alsa-tools alsa-utils kvantum gtk2-engines gtk-murrine-engine python3-cairo
python3-gobject lxappearance brightnessctl polkit-gnome xhost firefox udiskie
libva-utils google-noto-emoji-fonts rofi-wayland
```
2. Enable some basic services.
```sh
systemctl enable --user wireplumber
systemctl enable --user pipewire
sudo systemctl enable bluetooth
```

3. Run some basic commands.
```sh
# This replaces dmenu with rofi, useful for some scripts.
sudo dnf remove dmenu
sudo ln -s /usr/bin/rofi /usr/bin/dmenu
```

4. Change a config setting to enable power menu
```sh
sudo nano /etc/systemd/logind.conf
# Add this line
HandlePowerKey=ignore
# Run this command
sudo systemctl kill -s HUP systemd-logind
```

7. Reboot.
8. Clone my repo [.fedora](https://github.com/pzeadrian/.fedora) and run some basic scripts.
```sh
cd Documents
git clone https://github.com/pzeadrian/.fedora
cd .fedora/scripts
./fonts.sh
./config.sh
```

9. Add some variables to /etc/environment.
```sh
QT_STYLE_OVERRIDE=kvantum
MOZ_ENABLE_WAYLAND=1
```

8. Install Go language and use it to install Cliphist (Clipboard manager)
```sh
sudo dnf install go
go install go.senan.xyz/cliphist@latest
```


