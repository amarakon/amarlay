# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

RESTRICT="mirror"
#_PN="${PN}"
if [ "${PV}" != 9999 ]
then
	SRC_URI="https://github.com/hlissner/zsh-autopair/$PN/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	S="${WORKDIR}/${PN}-$PV"
	KEYWORDS="amd64 x86 ~arm64 ~ppc64"
else
	EGIT_REPO_URI="https://github.com/hlissner/zsh-autopair/$PN.git"
	inherit git-r3
	PROPERTIES="live"
fi

DESCRIPTION="Auto-close and delete matching delimiters in zsh"
HOMEPAGE="https://github.com/hlissner/zsh-autopair"

LICENSE="MIT"
SLOT="0"
IUSE=""

RDEPEND="app-shells/zsh"
DEPEND=""

src_install() {
	insinto "/usr/share/zsh/site-functions/"
	doins -r autopair.zsh autopair.plugin.zsh zsh-autopair.plugin.zsh
}
