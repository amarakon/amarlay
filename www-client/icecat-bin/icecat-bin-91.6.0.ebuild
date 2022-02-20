EAPI=7

inherit unpacker

DESCRIPTION="GNU IceCat Web Browser"
HOMEPAGE="https://www.gnu.org/software/gnuzilla"
SRC_URI="https://repo.archlinuxcn.org/x86_64/icecat-${PV}-1-x86_64.pkg.tar.zst -> ${PN}.tar.zst"

LICENSE="MPL-2.0 GPL-2 LGPL-2.1"
SLOT="0"
KEYWORDS="amd64 x86"
S="${WORKDIR}"

src_install() {
	insinto /usr/lib
	doins -r usr/lib/
	insinto /usr/share
	doins -r usr/share/
}

pkg_postinst() {
	ln -sf /usr/lib/icecat/icecat-bin /usr/bin
}
