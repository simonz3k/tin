#!/bin/bash
tmux set -g mouse on
tmux new-session -d -s tintin "tt++ ./char/simonz/simonz.tin"
#tmux split-window -h -p 40 -t tintin "tail -f ./char/simonz/3k.chat | egrep -v 'GOLD divvy|gold divvied'"
#tmux split-window -v -p 70 -t tintin "tt++ map-pane.tin"
#tmux split-window -h -p 40 -t tintin "tt++ status-pane.tin"
tmux split-window -h -p 40 -t tintin "tt++ map-pane.tin"
tmux split-window -v -p 30 -t tintin "tail -f ./logs/3k.chat"
tmux select-pane -t 0
tmux -2 attach-session -t tintin
