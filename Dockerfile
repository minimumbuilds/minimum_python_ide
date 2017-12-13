FROM minimumbuilds/minimum_py_ide_base

RUN addgroup mbuilds -g 1002
RUN adduser mbuilds -u 1001 -D -G mbuilds
RUN cp ~/.vimrc /home/mbuilds/
RUN cp -r ~/.vim /home/mbuilds
