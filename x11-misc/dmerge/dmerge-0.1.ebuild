EAPI=7

inherit savedconfig

DESCRIPTION="Dmenu wrapper for Emerge "
HOMEPAGE="https://github.com/Amarakon55/dmerge"
SRC_URI="https://github.com/Amarakon55/${PN}/archive/refs/tags/${PV}.tar.gz -> ${PN}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND="sys-apps/portage"

src_prepare() {
	default
	restore_config dmerge
}

src_compile() { :; }

src_install() {
	local emakeargs=(
		DESTDIR="${D}"
		PREFIX="${EPREFIX}"/usr
	)

	emake "${emakeargs[@]}" install
	save_config dmerge
}
