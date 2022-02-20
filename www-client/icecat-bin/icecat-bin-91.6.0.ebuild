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
	insinto /usr
	doins -r usr/lib
	doins -r usr/share
}

pkg_postinst() {
	chmod 755 \
		/usr/lib/icecat/icecat*
		/usr/lib/icecat/pingsender
		/usr/lib/icecat/plugin-container
		/usr/lib/icecat/*.so
	ln -sf /usr/lib/icecat/icecat-bin /usr/bin
}
