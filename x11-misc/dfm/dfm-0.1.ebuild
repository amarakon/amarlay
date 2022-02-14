EAPI=7

DESCRIPTION="Manage files using Dmenu"
HOMEPAGE="https://github.com/Amarakon55/dfm"
SRC_URI="https://github.com/Amarakon55/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND="
app-shells/bash
x11-misc/dmenu
"

src_compile() { :; }

src_install() {
	local emakeargs=(
		DESTDIR="${D}"
		PREFIX="${EPREFIX}"/usr
	)

	emake "${emakeargs[@]}" install
}
