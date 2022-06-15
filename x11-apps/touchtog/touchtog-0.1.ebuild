EAPI=7

DESCRIPTION="Toggle Touchpad On and Off"
HOMEPAGE="https://github.com/amarakon/touchtog"
SRC_URI="https://github.com/amarakon/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND="
	x11-apps/xinput
"

src_compile() { :; }

src_install() {
	local emakeargs=(
		DESTDIR="${D}"
		PREFIX="${EPREFIX}"/usr
	)

	emake "${emakeargs[@]}" install
}
