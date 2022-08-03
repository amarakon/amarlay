# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit nvim-plugin

if [[ ${PV} == 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/tpope/vim-rhubarb.git"
else
	SRC_URI="https://github.com/tpope/vim-rhubarb/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="amd64 x86 ~ppc-macos ~x64-macos"
	S="${WORKDIR}/vim-${P}"
fi

DESCRIPTION="GitHub extension for fugitive.vim"
HOMEPAGE="https://github.com/tpope/vim-rhubarb"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="app-nvim/fugitive"
