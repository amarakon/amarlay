# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

RESTRICT="mirror"
_PN="${PN#zsh-}"
if [ "${PV}" != 9999 ]
then
	SRC_URI="https://github.com/zdharma-continuum/$_PN/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	S="${WORKDIR}/${_PN}-$PV"
	KEYWORDS="amd64 x86 ~arm64 ~ppc64"
else
	EGIT_REPO_URI="https://github.com/zdharma-continuum/$_PN.git"
	inherit git-r3
	PROPERTIES="live"
fi

DESCRIPTION="Optimized and extended syntax highlighting for zsh"
HOMEPAGE="https://github.com/zdharma-continuum"

LICENSE="HPND"
SLOT="0"
IUSE=""

RDEPEND="app-shells/zsh"
DEPEND=""

src_install() {
	insinto "/usr/share/zsh/site-functions/"
	doins -r fast-syntax-highlighting.plugin.zsh fast-highlight fast-string-highlight fast-theme _fast-theme themes
}
