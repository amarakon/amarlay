EAPI=7

DESCRIPTION="Simple dmenu calculator"
HOMEPAGE="https://github.com/amarakon/cmenu"
SRC_URI="https://github.com/amarakon/${PN}/archive/refs/tags/${PV}.tar.gz -> ${PN}.tar.gz"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND="x11-misc/dmenu"

src_compile() { :; }

src_install() {
	local emakeargs=(
		DESTDIR="${D}"
		PREFIX="${EPREFIX}"/usr
	)

	emake "${emakeargs[@]}" install
}

pkg_postinst() {
	optfeature "clipboard support" x11-misc/xclip
}
