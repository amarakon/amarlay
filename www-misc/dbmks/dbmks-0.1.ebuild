EAPI=7

inherit optfeature

DESCRIPTION="Browser indenpendently manage bookmarks from Dmenu"
HOMEPAGE="https://github.com/Amarakon55/dbmks"
SRC_URI="https://github.com/Amarakon55/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"

src_compile() { :; }

src_install() {
	local emakeargs=(
		DESTDIR="${D}"
		PREFIX="${EPREFIX}"/usr
	)

	emake "${emakeargs[@]}" install
}

pkg_postinst() {
	optfeature "external menu support" x11-misc/dmenu
	optfeature "clipboard suppord" x11-misc/xclip
}
