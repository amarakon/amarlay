Amarlay
=======

My personal Gentoo overlay which includes programs that are unfortunately not in any other repository, including:
* [bd](https://github.com/vigneshwaranr/bd)
* [Cfetch](https://github.com/Amarakon55/cfetch)
* [nerd-fonts-inconsolata](https://github.com/ryanoasis/nerd-fonts)
* [zsh-autopair](https://github.com/hlissner/zsh-autopair)
* [zsh-manydots-magic](https://github.com/knu/zsh-manydots-magic)

It also has updated ebuilds compared to outdated ebuilds from other overlays:
* [blender](https://www.blender.org)
* [zsh-fast-syntax-highlighting](https://github.com/zdharma-continuum/fast-syntax-highlighting)

More ebuilds will be added in the future.

Adding this Repository
----------------------

You must have [eselect-repository](https://packages.gentoo.org/packages/app-eselect/eselect-repository) installed.
Run this command (as root):

    eselect repository add amarlay git https://github.com/Amarakon55/amarlay

Then sync (as root):

    emerge --sync amarlay
