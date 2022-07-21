EAPI=7

DESCRIPTION="sudo -A equivalent for Doas"
HOMEPAGE="https://github.com/amarakon/doas_askpass"
SRC_URI="https://github.com/amarakon/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="x86"

RDEPEND="app-admin/doas dev-tcltk/expect"

src_compile() { :; }

src_install() {
	local emakeargs=(
		DESTDIR="${D}"
		PREFIX="${EPREFIX}"/usr
	)

	emake "${emakeargs[@]}" install
}

pkg_postinst() {
	optfeature "Dmenu as interface" x11-misc/dmenu
}
