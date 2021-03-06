## Overview

My personal *dotfiles*, internally known as *env_custom*, is a collection of
dotfiles and install scripts for use on \*unix machines.

## Bootstrap

If you want to install and configure everything including dependencies, try these scripts:

- [Ubuntu 14.04 LTS](https://gist.githubusercontent.com/svs14/a265a59761ada0383cf0/raw/160fdcd299d43dc9607c1aa8faddd7c44393dffa/ubuntu-14.04-env_custom-bootstrap.sh)
- [Ubuntu 12.04 LTS](https://gist.githubusercontent.com/svs14/5998032/raw/131897d1c43999de3397ec226c8a64f3c2c7956b/ubuntu-12.04-env_custom-bootstrap.sh)
- [ArchLinux](https://gist.githubusercontent.com/svs14/8082569/raw/159a7a9e1f602ba0df6fd21910bc5e6ff8c46c9a/archlinux-env_custom-bootstrap.sh)

## Requirements

The following must be installed:

* bash
* curl
* git
* vim 7.3+

## Getting Started

Installation requires these steps:

    git clone https://github.com/sjenkz/dotfiles.git .env_custom
    .env_custom/install.sh

This will:

* Add a line to your shell (zsh/bash) rc file, sourcing
the *env_custom*'s `shell-settings/.shellrc` script, that enables
custom shell configurations.
* Backup (`.old-home/`) files that are to be overriden in home
directory by files found in `home/`.
* Install vundle if required for vim.


If you find *env_custom* disagreeable, then you can uninstall by:

    .env_custom/uninstall.sh

This will revert back to your old setup as found in the backup `.old-home/`.

Various install scripts are scattered throughout the *env_custom* main directory,
such as `ruby/install-rvm.sh`. These can be called directly from your shell.

## How It Works

When *env_custom* is installed, it sources `shell-settings/.shellrc` from the 
provided shell's rc file. This in turn sources non-hidden files in 
`shell-settings/` for any shell, and sources non-hidden files found in the 
shell's directory `shell-setting/[shell-name]`.

Files found in `home/`, are copied to `~/`. These files are often symbolic links
that point to rc files in their respective topic directory. For example,
`home/.vimrc` points to `vim/.vimrc`.

The file `vim/.vimrc`, is Vundle-enabled and modularised such that it sources
from 'facets' (files found of form `vim/facets/*.vim`).

Install scripts that can be run by bash can be found in topic directories for
common tasks such as installing rvm when developing in ruby
(`ruby/install-rvm.sh`).

## License

MIT License. See [LICENSE.txt](LICENSE.txt) for more details.
