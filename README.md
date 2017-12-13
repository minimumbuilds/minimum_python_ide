# minimum_python_ide

Version: v0.1.1

![Vim Python IDE][logo]

[logo]: /images/python_ide_full.png 

## Personalize

	make personalize

This will create a user in the container with matching UID/GID of the current user.  

## Run
	docker run -it --rm -p 1337:1337 --user mbuilds -v $PWD:/repos minimumbuilds/vim_ide vim /repos


This will launch the IDE in the /repos dir in the container (your local directory)

## Usage

- ``<F2>`` Buffer prev 
- ``<F3>`` Buffer next 
- ``<F6>`` toggles Livedown preview.   Open a markdown file, hit F7 and you'll get a Live preview of your Markown file. You will need to open a browser to ``localhost:1337``.  The preview will update immediately on write.
- ``<F7>`` (with a python file open) lint the current file & display output in a new window.  Saving a file will have the same effect.
- ``<F8>`` toggles the righthand tag bar.  This will display a structured view of a program.  It does this by creating a sidebar that displays the ctags-generated tags of the current file, ordered by their scope. This means that for example methods in C++ are displayed under the class they are defined in.
- ``<ctrl-p>`` Fuzzy file search finder: https://github.com/ctrlpvim/ctrlp.vim
 
## Contents

### Base:Base
- Official 3.6 alpine linux docker

### Adds:
- Python2/3
- Vim 8.0 with python2/3 support (built from source)
- Vundle for Vim plugin management
- Livedown for live previewing of Markdown files (github style) 

Additional Plugins:

- Plugin 'VundleVim/Vundle.vim'
- Plugin 'python-mode/python-mode'
- Plugin 'scrooloose/nerdtree'
- Plugin 'ryanoasis/vim-webdevicons'
- Plugin 'vim-syntastic/syntastic'
- Plugin 'nvie/vim-flake8'
- Plugin 'jnurmine/Zenburn'
- Plugin 'altercation/vim-colors-solarized'
- Plugin 'jistr/vim-nerdtree-tabs'
- Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
- Plugin 'tpope/vim-fugitive'
- Plugin 'Shougo/deoplete.nvim'
- Plugin 'roxma/nvim-yarp'
- Plugin 'roxma/vim-hug-neovim-rpc'
- Plugin 'kien/ctrlp.vim'
- Plugin 'bling/vim-airline'
- Plugin 'vim-airline/vim-airline-themes'
- Plugin 'majutsushi/tagbar'
- Plugin 'haya14busa/incsearch.vim'
- Plugin 'jaxbot/browserlink.vim'
- Plugin 'shime/vim-livedown'

## Built With

* [Alpine Linux](https://hub.docker.com/_/alpine/) - Alpine Linux Official Docker

## Authors

* **Minimum Builds** - *Initial work* - [minimumbuilds](https://github.com/minimumbuilds)
