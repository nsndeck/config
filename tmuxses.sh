#!/bin/bash

tmux new-session -s "worksession" -d
#tmux split-window -h
tmux new-window -n "workflow"
tmux send-keys -t "workflow" "cd ~/work/git/impl-allianz-service-workflow" C-m
tmux send-keys -t "workflow" zsh C-m
tmux new-window -n "lib"
tmux send-keys -t "lib" "cd ~/work/git/lib-workflow" C-m
tmux send-keys -t "lib" zsh C-m
tmux new-window -n "environment"
tmux send-keys -t "environment" "cd ~/work/git/impl-allianz-environment-deployment" C-m
tmux send-keys -t "environment" zsh C-m
tmux new-window -n "docker"
tmux send-keys -t "docker" "cd ~/work/docker/dev-env" C-m
tmux send-keys -t "docker" zsh C-m
tmux new-window -n "192.168.132.220"
tmux attach-session -d
