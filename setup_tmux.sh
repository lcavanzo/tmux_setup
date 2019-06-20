#/bin/bash

# create tmux dir
mkdir -p ~/.tmux/

# Download repo
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# copy base configuration to tmux
cat base_rc > ~/.tmux.conf

# start a server but don't attach to it
tmux start-server

# create a new session but don't attach to it either
tmux new-session -d

# install the plugins
~/.tmux/plugins/tpm/scripts/install_plugins.sh

# killing the server is not required, I guess
tmux kill-server

# restore tmux-resurrection sessions
echo "alias tma='tmux attach || { (while ! tmux run-shell
~/.tmux/plugins/tmux-resurrect/scripts/restore.sh; do sleep 0.2; done)& tmux ;
}'" >> ~/.bashrc

