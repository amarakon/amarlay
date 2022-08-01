# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit vim-plugin git-r3

EGIT_REPO_URI="https://github.com/junegunn/fzf.vim"
HOMEPAGE="https://github.com/junegunn/fzf.vim"
DESCRIPTION="vim plugin: fzf"
LICENSE="MIT"
VIM_PLUGIN_HELPFILES="${PN}.txt"

DOCS=( README.md )

src_prepare() {
	default
}
