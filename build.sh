#!/bin/bash


apt-get build-dep xfce4-panel
apt-get source xfce4-panel

cd xfce4-panel-*

linha1=$(grep -n "^static GtkMenu \*$" xfce-panel-plugin.c  | cut -d\: -f1)

linha2=$(grep -n "return plugin->priv->menu;" xfce-panel-plugin.c  | cut -d\: -f1)


sed -i "${linha1},${linha2}s/gtk_widget_show (item);/\/\/ gtk_widget_show (item);/" libxfce4panel/xfce-panel-plugin.c


dpkg-buildpackage -us -uc

cd ..

ls
