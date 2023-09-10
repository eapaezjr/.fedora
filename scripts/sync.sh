#!/bin/bash

if [ -d "$HOME/Documents/" ]; then

    echo "English..."
    cd $HOME/Documents/.fedora/
    git pull
    cd
    rm -r $HOME/Documents/.fedora/apps/*
    # 
    # Bash
    cp -f $HOME/.bashrc $HOME/Documents/.fedora/apps/
    # 
    # Alacritty
    cp -rf $HOME/.config/alacritty/ $HOME/Documents/.fedora/apps/
    #
    # Dunst
    cp -rf $HOME/.config/dunst/ $HOME/Documents/.fedora/apps/
    #
    # MPV
    cp -rf $HOME/.config/mpv/ $HOME/Documents/.fedora/apps/
    #
    # Rofi
    cp -rf $HOME/.config/rofi/ $HOME/Documents/.fedora/apps/
    #
    # Sway
    cp -rf $HOME/.config/sway/ $HOME/Documents/.fedora/apps/
    #
    # Waybar
    cp -rf $HOME/.config/waybar/ $HOME/Documents/.fedora/apps/
    #
    # Swaylock
    cp -rf $HOME/.config/swaylock $HOME/Documents/.fedora/apps/

    cd $HOME/Documents/.fedora/
    git add -A
    git commit -m "$1"
    git push

elif [ -d "$HOME/Documentos/" ]; then
    echo "Spanish..."

    cd $HOME/Documentos/.fedora/
    git pull
    cd
    rm -r $HOME/Documentos/.fedora/apps/*
    # 
    # Bash
    cp -f $HOME/.bashrc $HOME/Documentos/.fedora/apps/
    # 
    # Alacritty
    cp -rf $HOME/.config/alacritty/ $HOME/Documentos/.fedora/apps/
    #
    # Dunst
    cp -rf $HOME/.config/dunst/ $HOME/Documentos/.fedora/apps/
    #
    # MPV
    cp -rf $HOME/.config/mpv/ $HOME/Documentos/.fedora/apps/
    #
    # Rofi
    cp -rf $HOME/.config/rofi/ $HOME/Documentos/.fedora/apps/
    #
    # Sway
    cp -rf $HOME/.config/sway/ $HOME/Documents/.fedora/apps/
    #
    # Waybar
    cp -rf $HOME/.config/waybar/ $HOME/Documentos/.fedora/apps/
    #
    # Swaylock
    cp -rf $HOME/.config/swaylock $HOME/Documents/.fedora/apps/

    cd $HOME/Documentos/.fedora/
    git add -A
    git commit -m "$1"
    git push

else 
    echo "No english or spanish detected..."

fi
