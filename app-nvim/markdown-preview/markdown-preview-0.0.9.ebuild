# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit nvim-plugin

MY_PN=${PN}.nvim
MY_P=${MY_PN}-${PV}
SRC_URI="https://github.com/iamcco/${MY_PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
KEYWORDS="amd64 x86"
S=${WORKDIR}/${MY_P}

DESCRIPTION="NVIM plugin: markdown preview"
HOMEPAGE="https://github.com/iamcco/markdown-preview.nvim"
VIM_PLUGIN_HELPFILES="${PN}.txt"

DOCS=( README.md )

src_prepare() {
	default

	# remove test dir
	rm -r test || die
}
