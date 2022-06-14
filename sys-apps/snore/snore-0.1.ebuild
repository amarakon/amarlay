EAPI=7

DESCRIPTION="Sleep with feedback"
HOMEPAGE="https://github.com/clamiax/snore"
SRC_URI="https://github.com/clamiax/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 x86"

src_compile() {
	emake snore
}

src_install() {
	insinto "/usr/bin"
	doins -r snore
}

pkg_postinst() {
	chmod 755 /usr/bin/snore
}
