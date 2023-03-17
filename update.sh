#! /bin/bash

dot=$HOME/Playground/dotfiles
for dir in $(\ls $dot/.config); do
	cp -rf $HOME/.config/$dir $dot/.config
done
cp -rf $HOME/.local/share/fonts $dot/.local/share
cp -f $HOME/.zshrc $dot
xbps-query -m >$dot/xbps-packages.list
# 7z a -t7z -m0=LZMA2 -mmt=on -mx9 -md=64m -mfb=64 -ms=16g -mqs=on -sccUTF-8 -bb0 -bse0 -bsp2 '-w$HOME' -mtc=on -mta=on '$dot/themes.7z' '$HOME/.icons' '$HOME/.themes'
# dconf reset -f /org/cinnamon/
# dconf load /org/cinnamon/ < cinnamon.dconf
dconf dump /org/cinnamon/ >$dot/cinnamon.dconf
sed -i '/history/d' $dot/cinnamon.dconf
cp -rf $HOME/.mozilla/firefox/*.default-default/chrome $dot/.mozilla/firefox/
git add .
lazygit
