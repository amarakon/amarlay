# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Vim plugin to work with R"
HOMEPAGE="
	https://github.com/jalvesaq/Nvim-R
"

MY_PN=Nvim-${PN}
MY_P=${MY_PN}-${PV}
SRC_URI="https://github.com/jalvesaq/${MY_PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
S=${WORKDIR}/${MY_P}

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
VIM_PLUGIN_HELPFILES="${PN}.txt"

DOCS=( README.md )
