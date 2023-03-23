#!/bin/bash
if [ $(ps -aux | grep conky | wc -l) -gt 1 ]; then
	pkill conky
else
	conky -c $HOME/.config/conky/stats.lua
	conky -c $HOME/.config/conky/monitor-left.lua
	conky -c $HOME/.config/conky/monitor-right.lua
fi
