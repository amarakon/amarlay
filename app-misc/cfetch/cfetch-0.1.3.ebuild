EAPI=7

inherit optfeature savedconfig toolchain-funcs

DESCRIPTION="A rewrite of neofetch in C. Includes features not seen in other fetch programs."
HOMEPAGE="https://github.com/Amarakon55/cfetch"
SRC_URI="https://github.com/Amarakon55/${PN}/archive/refs/tags/${PV}.tar.gz -> ${PN}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND="
x11-libs/libX11
x11-libs/libpciaccess
"

src_prepare() {
	default
	restore_config config.h
}

src_compile() {
	emake cfetch
}

src_install() {
	insinto "/usr/bin"
	doins -r cfetch
	save_config config.h
}

pkg_postinst() {
	chmod 755 /usr/bin/cfetch
}
