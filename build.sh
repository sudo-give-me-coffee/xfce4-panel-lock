#!/bin/bash

sed -i 's|# deb-src|deb-src|g' /etc/apt/sources.list

cat /etc/apt/sources.list
apt-get update

apt-get build-dep xfce4-panel
apt-get source xfce4-panel

cd xfce4-panel-*

linha1=$(grep -n "^static GtkMenu \*$" libxfce4panel/xfce-panel-plugin.c  | cut -d\: -f1)

linha2=$(grep -n "return plugin->priv->menu;" libxfce4panel/xfce-panel-plugin.c  | cut -d\: -f1)


sed -i "${linha1},${linha2}s/gtk_widget_show (item);/\/\/ gtk_widget_show (item);/" libxfce4panel/xfce-panel-plugin.c


dpkg-buildpackage -us -uc

cd ..

tar -cvf xfce4-panel.tar $(find . -type f)
