FROM ffcv:v1

RUN apt-get install -y zsh tmux xdg-utils

COPY ./dotfiles.sh .

RUN wget https://github.com/neovim/neovim/releases/download/v0.10.4/nvim-linux-x86_64.appimage && \
	chmod u+x nvim-linux-x86_64.appimage  && \
	/workspace/nvim-linux-x86_64.appimage --appimage-extract && \
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm


RUN ls
