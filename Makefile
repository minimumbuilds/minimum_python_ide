.PHONY: build run push
# version 0.0.0
#
mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
mkfile_dir := $(dir $(mkfile_path))
mkfile_dir_name := $(notdir $(patsubst %/,%,$(dir $(mkfile_path))))
export mkfile_dir

build: $(mkfile_dir)/build/Dockerfile
	docker build -t $(mkfile_dir_name) build/.

run:
	docker run -it --rm ${PWD##*/}

ppatch:
	bumpversion  --commit patch
	git push --tags origin master

pminor:
	bumpversion  --commit minor 
	git push --tags origin master

pmajor:
	bumpversion  --commit major 
	git push --tags origin master

personalize:
	cp Dockerfile.save Dockerfile
	./personalize.sh
	docker build -t vim_ide .
	
