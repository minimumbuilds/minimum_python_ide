FROM minimumbuilds/minimum_python3:latest

MAINTAINER Minimum Builds <minumumbuilds@gmail.com>

ARG BUILD_DATE
ARG VCS_REF

LABEL Name=minimum_template \
      Version=0.0.0 \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/minimumbuilds/minimum_template.git" \
      org.label-schema.vcs-ref=$VCS_REF

COPY requirements.txt .

RUN pip3 install -r requirements.txt \ 
        && cd /usr/local/bin \
	&& ln -s idle3 idle \
	&& ln -s pydoc3 pydoc \
	&& ln -s python3 python \
	&& ln -s python3-config python-config 

