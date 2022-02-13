EAPI=8

inherit git-r3

DESCRIPTION="Dmenu wrapper for Emerge "
HOMEPAGE="https://github.com/Amarakon55/dmerge"
EGIT_REPO_URI="https://github.com/Amarakon55/dmerge"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="sys-apps/portage"

src_compile() { :; }

src_install() {
	local emakeargs=(
		DESTDIR="${D}"
		PREFIX="${EPREFIX}"/usr
	)

	emake "${emakeargs[@]}" install
}
