FROM minimumbuilds/minimum_python_ide

RUN addgroup mbuilds -g 1002 
RUN adduser mbuilds -u 1001 -D -G mbuilds
RUN cp ~/.vimrc /home/mbuilds/
RUN cp -r ~/.vim /home/mbuilds/
RUN apk add su-exec
#RUN su-exec mbuilds vim +PluginInstall +qall
