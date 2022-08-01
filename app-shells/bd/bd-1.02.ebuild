# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

RESTRICT="mirror"
_PN="${PN#bd-}"
if [ "${PV}" != 9999 ]
then
	SRC_URI="https://github.com/vigneshwaranr/bd/$_PN/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	S="${WORKDIR}/${_PN}-$PV"
	KEYWORDS="amd64 x86 ~arm64 ~ppc64"
else
	EGIT_REPO_URI="https://github.com/vigneshwaranr/bd/$_PN.git"
	inherit git-r3
	PROPERTIES="live"
fi

DESCRIPTION="Quickly go back to a parent directory instead of typing `cd ../../` repeteadly."
HOMEPAGE="https://github.com/vigneshwaranr/bd"

LICENSE="MIT"
SLOT="0"
IUSE=""

RDEPEND=""
DEPEND=""

src_install() {
	insinto "/usr/bin"
	doins -r bd
}

pkg_postinst() {
	chmod 755 /usr/bin/bd
}
