FROM minimumbuilds/minimum_py_ide_base

RUN addgroup mbuilds -g <GID>
RUN adduser mbuilds -u <UID> -D -G mbuilds
RUN cp ~/.vimrc /home/mbuilds/
RUN cp -r ~/.vim /home/mbuilds
