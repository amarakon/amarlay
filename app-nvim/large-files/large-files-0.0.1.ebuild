# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit nvim-plugin

MY_PN=vim-${PN}
MY_P=${MY_PN}-${PV}
SRC_URI="https://github.com/fracpete/${MY_PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
KEYWORDS="amd64 x86"
S=${WORKDIR}/${MY_P}

DESCRIPTION="Vim plugin that makes viewing/editing of large files more efficient."
HOMEPAGE="https://github.com/fracpete/vim-large-files"
LICENSE="MIT"

DOCS=( README.md RELEASE.md )
