FROM alpine:3.6	 

MAINTAINER Minimum Builds <minumumbuilds@gmail.com>

ARG BUILD_DATE
ARG VCS_REF

LABEL Name=minimum_python_ide \
      Version=0.0.9 \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/minimumbuilds/minimum_python_ide.git" \
      org.label-schema.vcs-ref=$VCS_REF

RUN apk update && apk add git gcc make ncurses-dev ncurses python-dev python3-dev python python3 ctags nodejs-npm musl-dev \
  	&& cd /tmp && git clone https://github.com/vim/vim.git && cd vim \
  	&& ./configure --enable-pythoninterp --prefix=/usr --with-python-config-dir=/usr/lib/python2.7/config --enable-python3interp \
  	&& make && make install
 
RUN npm install -g livedown \
  	&& git clone https://github.com/shime/vim-livedown.git ~/.vim/bundle/vim-livedown \
  	&& git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim \
  	&& git clone https://github.com/minimumbuilds/minimum_dotfiles.git \
  	&& cp minimum_dotfiles/.vimrc ~ \
  	&& vim +PluginInstall +qall 
