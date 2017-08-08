#!/bin/bash

tmux new-session -s "worksession" -d
tmux split-window -h
tmux new-window -n "vim"
tmux new-window -n "git"
tmux new-window -n "vifm"
tmux attach-session -d
