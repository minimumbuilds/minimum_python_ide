.PHONY: build run push
# version 0.0.0
#
mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
mkfile_dir := $(dir $(mkfile_path))
mkfile_dir_name := $(notdir $(patsubst %/,%,$(dir $(mkfile_path))))
export mkfile_dir

init: 
	# TODO add error handling
	travis login --auto
	hub create
	git remote remove origin
	rm README.md
	mv README.md.template README.md
	sed -i -e 's/minimum_template/$(mkfile_dir_name)/g' Dockerfile README.md .bumpversion.cfg
	git commit -a -m 'initial'
	bumpversion --commit patch
	travis enable --no-interactive
	git push --tags origin master

build: $(mkfile_dir)/Dockerfile
	docker build -t $(mkfile_dir_name) .

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

commit:
	git commit -a
