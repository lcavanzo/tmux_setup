#/bin/bash
mkdir -p ~/.tmux/

# Download repo
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

cat base_rc > ~/.tmux.conf

./install-plugins.sh
