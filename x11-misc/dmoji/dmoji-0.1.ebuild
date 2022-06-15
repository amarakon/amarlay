EAPI=7

DESCRIPTION="Dmenu prompt to select an emoji to copy to the clipboard"
HOMEPAGE="https://github.com/amarakon/dmoji"
SRC_URI="https://github.com/amarakon/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND="
	x11-misc/dmenu
	x11-misc/xclip
"

src_compile() { :; }

src_install() {
	local emakeargs=(
		DESTDIR="${D}"
		PREFIX="${EPREFIX}"/usr
	)

	emake "${emakeargs[@]}" install
}
