#! /bin/bash

dot=$HOME/Playground/dotfiles
for dir in $(\ls $dot/.config); do
	cp -rf $HOME/.config/$dir $dot/.config
done
cp -rf $HOME/.local/share/fonts $dot/.local/share
cp -f $HOME/.zshrc $dot
xbps-query -m >$dot/xbps-packages.list
# dconf reset -f /org/cinnamon/
# dconf load /org/cinnamon/ < cinnamon.dconf
dconf dump /org/cinnamon/ >$dot/cinnamon.dconf
sed -i '/history/d' $dot/cinnamon.dconf
cp -rf $HOME/.mozilla/firefox/*.default-default/chrome $dot/.mozilla/firefox/
git add .
lazygit
