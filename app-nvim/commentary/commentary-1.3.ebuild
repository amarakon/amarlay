# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit nvim-plugin

DESCRIPTION="Vim plugin: comment stuff out"
HOMEPAGE="https://www.vim.org/scripts/script.php?script_id=3695 https://github.com/tpope/vim-commentary"

MY_PN=vim-${PN}
MY_P=${MY_PN}-${PV}

if [[ ${PV} == "9999" ]] ; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/tpope/vim-commentary"
else
	SRC_URI="https://github.com/tpope/${MY_PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
fi

S=${WORKDIR}/${MY_P}

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 x86"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
