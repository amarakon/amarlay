# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit nvim-plugin

if [[ ${PV} == 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/tpope/vim-fugitive.git"
else
	SRC_URI="https://github.com/tpope/vim-fugitive/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="amd64 x86 ~ppc-macos ~x64-macos"
	S="${WORKDIR}/vim-${P}"
fi

DESCRIPTION="A Git wrapper so awesome, it should be illegal"
HOMEPAGE="https://www.vim.org/scripts/script.php?script_id=2975 https://github.com/tpope/vim-fugitive/"

SLOT="0"
KEYWORDS="~amd64"

VIM_PLUGIN_HELPFILES="${PN}.txt"

RDEPEND="dev-vcs/git"
