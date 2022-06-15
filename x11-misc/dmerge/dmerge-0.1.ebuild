EAPI=7

DESCRIPTION="Dmenu wrapper for Emerge "
HOMEPAGE="https://github.com/amarakon/dmerge"
SRC_URI="https://github.com/amarakon/${PN}/archive/refs/tags/${PV}.tar.gz -> ${PN}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND="sys-apps/portage"

src_compile() { :; }

src_install() {
	local emakeargs=(
		DESTDIR="${D}"
		PREFIX="${EPREFIX}"/usr
	)

	emake "${emakeargs[@]}" install
}
