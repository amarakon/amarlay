# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Streaming torrent client for node.js"
HOMEPAGE="https://github.com/mafintosh/peerflix"
if [[ ${PV} == 9999 ]];then
	inherit git-r3
	EGIT_REPO_URI="${HOMEPAGE}"
	KEYWORDS=""
	SRC_URI=""
else
	SRC_URI="${HOMEPAGE}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64 ~x86"
fi

LICENSE="MIT"
SLOT="0"

RDEPEND="net-libs/nodejs[npm]"
DEPEND="${RDEPEND}"

src_install() {
	npm install --cache ../cache --user root  -g  --prefix "${D}/usr" "${DISTDIR}/${P}.tar.gz"  || die "Failed installation"
}
