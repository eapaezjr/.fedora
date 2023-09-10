#!/bin/bash

if [ -d "$HOME/Documents/" ]; then

    echo "English..."
    cd $HOME/Documents/.fedora/
    git pull
    cd
    mkdir -p $HOME/.config
    mkdir -p $HOME/.wallpapers

    cp -rf $HOME/Documents/.fedora/apps/* $HOME/.config/
    cp -f $HOME/Documents/.fedora/apps/.bashrc $HOME/
    cp -rf $HOME/Documents/.fedora/wallpapers/* $HOME/.wallpapers/

    read -p "RESOLUTION (1080 or 768): " res
    sh $HOME/Documents/.fedora/scripts/resolution $res

elif [ -d "$HOME/Documentos/" ]; then
    echo "Spanish..."

    cd $HOME/Documentos/.fedora/
    git pull
    cd
    mkdir -p $HOME/.config
    mkdir -p $HOME/.wallpapers

    cp -rf $HOME/Documentos/.fedora/apps/* $HOME/.config/
    cp -f $HOME/Documentos/.fedora/apps/.bashrc $HOME/
    cp -rf $HOME/Documentos/.fedora/wallpapers/* $HOME/.wallpapers/

    read -p "RESOLUTION (1080 or 768): " res
    sh $HOME/Documentos/.fedora/scripts/resolution $res

else 
    echo "No english or spanish detected..."

fi
