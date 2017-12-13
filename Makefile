.PHONY: build run push
# version 0.0.0
#
mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
mkfile_dir := $(dir $(mkfile_path))
mkfile_dir_name := $(notdir $(patsubst %/,%,$(dir $(mkfile_path))))
export mkfile_dir

ppatch:
	bumpversion  --commit patch
	git push --tags origin master

pminor:
	bumpversion  --commit minor 
	git push --tags origin master

pmajor:
	bumpversion  --commit major 
	git push --tags origin master

personal:
	cp Dockerfile.save Dockerfile
	./personalize.sh
	docker build -t vim_ide .
	
