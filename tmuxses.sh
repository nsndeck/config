#!/bin/bash

tmux new-session -s "worksession" -d
tmux split-window -h
tmux new-window -n "vim"
tmux new-window -n "work"
tmux new-window -n "docker"
tmux new-window -n "cas"
tmux attach-session -d
