#!/bin/bash

yay -S --needed \
    sway \
    swaybg \
    swaylock \
    waybar \
    mako \
    kanshi \
    kitty \
    fuzzel \
    firefox \
    nemo \
    yazi \
    autotiling \
    wl-clipboard \
    wl-clip-persist \
    xorg-xwayland \
    polkit-gnome \
    pavucontrol \
    brightnessctl \
    network-manager-applet \
    noto-fonts \
    ttf-iosevka \
    xdg-desktop-portal \
    xdg-desktop-portal-wlr \
    xdg-desktop-portal-gtk

mkdir -p ~/.config/{sway,waybar,mako,kanshi,kitty,fuzzel,gtk-3.0,xdg-desktop-portal}

cp -r sway/* ~/.config/sway/
cp -r waybar/* ~/.config/waybar/
cp -r mako/* ~/.config/mako/
cp -r kanshi/* ~/.config/kanshi/
cp -r kitty/* ~/.config/kitty/
cp -r fuzzel/* ~/.config/fuzzel/
cp -r gtk-3.0/* ~/.config/gtk-3.0/

cat > ~/.config/xdg-desktop-portal/sway-portals.conf << 'EOF'
[preferred]
default=gtk
org.freedesktop.impl.portal.Screenshot=wlr
org.freedesktop.impl.portal.ScreenCast=wlr
EOF

echo "Sway-dots installed!"
```
