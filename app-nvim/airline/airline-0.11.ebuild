# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit nvim-plugin

if [[ ${PV} != 9999* ]] ; then
	MY_PN=vim-${PN}
	MY_P=${MY_PN}-${PV}
	SRC_URI="https://github.com/${MY_PN}/${MY_PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="amd64 x86"
	S=${WORKDIR}/${MY_P}
else
	inherit git-r3
	EGIT_REPO_URI="https://github.com/vim-airline/vim-airline"
fi

DESCRIPTION="VIM plugin: lean & mean statusline that's light as air"
HOMEPAGE="https://github.com/vim-airline/vim-airline/ https://www.vim.org/scripts/script.php?script_id=4661"
LICENSE="MIT"
VIM_PLUGIN_HELPFILES="${PN}.txt"

DOCS=( CHANGELOG.md README.md )

src_prepare() {
	default

	# remove test dir
	rm -r t || die
}
